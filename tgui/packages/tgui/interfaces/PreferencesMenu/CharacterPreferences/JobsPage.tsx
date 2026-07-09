import { sortBy } from 'es-toolkit';
import type { PropsWithChildren, ReactNode } from 'react';
import { useBackend } from 'tgui/backend';
import { Box, Button, Dropdown, Stack, Tooltip } from 'tgui-core/components';
import { classes } from 'tgui-core/react';

import {
  createSetPreference,
  type Job,
  JoblessRole,
  JobPriority,
  type PreferencesMenuData,
} from '../types';
import { useServerPrefs } from '../useServerPrefs';

function sortJobs(entries: [string, Job][], head?: string) {
  return sortBy(entries, [
    ([key, _]) => (key === head ? -1 : 1),
    ([key, _]) => key,
  ]);
}

const PRIORITY_BUTTON_SIZE = '18px';

const departmentColorDefaults: Record<string, string> = {
  Assistant: 'grey',
  Captain: 'blue',
  Cargo: 'brown',
  Command: 'blue',
  Security: 'red',
  Engineering: 'orange',
  Medical: 'teal',
  Science: 'purple',
  Service: 'green',
  Silicon: 'pink',
};

type PriorityButtonProps = {
  name: string;
  color: string;
  modifier?: string;
  enabled: boolean;
  onClick: () => void;
  department?: string;
};

function PriorityButton(props: PriorityButtonProps) {
  const className = `PreferencesMenu__Jobs__departments__priority`;
  const inactiveColor = props.department
    ? (departmentColorDefaults[props.department] ?? props.department)
    : 'light-grey';

  return (
    <Button
      className={classes([
        className,
        props.modifier && `${className}--${props.modifier}`,
        props.enabled && 'active',
      ])}
      color={props.enabled ? props.color : inactiveColor}
      onClick={props.onClick}
      height={PRIORITY_BUTTON_SIZE}
    >
      {props.name}
    </Button>
  );
}

type CreateSetPriority = (priority: JobPriority | null) => () => void;

const createSetPriorityCache: Record<string, CreateSetPriority> = {};

function createCreateSetPriorityFromName(jobName: string): CreateSetPriority {
  if (createSetPriorityCache[jobName] !== undefined) {
    return createSetPriorityCache[jobName];
  }

  const perPriorityCache: Map<JobPriority | null, () => void> = new Map();

  function createSetPriority(priority: JobPriority | null) {
    const existingCallback = perPriorityCache.get(priority);
    if (existingCallback !== undefined) {
      return existingCallback;
    }

    function setPriority() {
      const { act } = useBackend<PreferencesMenuData>();

      act('set_job_preference', {
        job: jobName,
        level: priority,
      });
    }

    perPriorityCache.set(priority, setPriority);
    return setPriority;
  }

  createSetPriorityCache[jobName] = createSetPriority;

  return createSetPriority;
}

type PriorityButtonsProps = {
  createSetPriority: CreateSetPriority;
  isOverflow: boolean;
  priority: JobPriority;
  department?: string;
};

function PriorityButtons(props: PriorityButtonsProps) {
  const { createSetPriority, isOverflow, priority, department } = props;

  return (
    <Box
      style={{
        alignItems: 'center',
        height: '100%',
        justifyContent: 'flex-end',
        paddingLeft: '0.3em',
        paddingTop: '0.12em',
        paddingBottom: '0.12em',
      }}
    >
      {isOverflow ? (
        <>
          <PriorityButton
            name="Off"
            modifier="off"
            color="light-grey"
            enabled={!priority}
            onClick={createSetPriority(null)}
            department={department}
          />

          <PriorityButton
            name="On"
            color="good"
            enabled={!!priority}
            onClick={createSetPriority(JobPriority.High)}
            department={department}
          />
        </>
      ) : (
        <>
          <PriorityButton
            name="Off"
            modifier="off"
            color="light-grey"
            enabled={!priority}
            onClick={createSetPriority(null)}
            department={department}
          />

          <PriorityButton
            name="Low"
            color="bad"
            enabled={priority === JobPriority.Low}
            onClick={createSetPriority(JobPriority.Low)}
            department={department}
          />

          <PriorityButton
            name="Med"
            color="average"
            enabled={priority === JobPriority.Medium}
            onClick={createSetPriority(JobPriority.Medium)}
            department={department}
          />

          <PriorityButton
            name="High"
            color="good"
            enabled={priority === JobPriority.High}
            onClick={createSetPriority(JobPriority.High)}
            department={department}
          />
        </>
      )}
    </Box>
  );
}

type JobRowProps = {
  className?: string;
  job: Job;
  name: string;
  department: string;
};

function JobRow(props: JobRowProps) {
  const { data, act } = useBackend<PreferencesMenuData>();
  const { className, job, name, department } = props;

  const isOverflow = data.overflow_role === name;
  const priority = data.job_preferences[name];

  const createSetPriority = createCreateSetPriorityFromName(name);

  const experienceNeeded = data.job_required_experience?.[name];
  const daysLeft = data.job_days_left ? data.job_days_left[name] : 0;

  const alt_title_selected = data.alt_job_titles[name]
    ? data.alt_job_titles[name]
    : name;

  let rightSide: ReactNode;

  if (experienceNeeded) {
    const { experience_type, required_playtime } = experienceNeeded;
    const hoursNeeded = Math.ceil(required_playtime / 60);

    rightSide = (
      <Stack align="center" height="100%" pr={1}>
        <Stack.Item grow textAlign="right">
          <b>{hoursNeeded}h</b> as {experience_type}
        </Stack.Item>
      </Stack>
    );
  } else if (daysLeft > 0) {
    rightSide = (
      <Stack align="center" height="100%" pr={1}>
        <Stack.Item grow textAlign="right">
          <b>{daysLeft}</b> day{daysLeft === 1 ? '' : 's'} left
        </Stack.Item>
      </Stack>
    );
  } else if (data.job_bans && data.job_bans.indexOf(name) !== -1) {
    rightSide = (
      <Stack align="center" height="100%" pr={1}>
        <Stack.Item grow textAlign="right">
          <b>Banned</b>
        </Stack.Item>
      </Stack>
    );
  } else {
    rightSide = (
      <PriorityButtons
        createSetPriority={createSetPriority}
        isOverflow={isOverflow}
        priority={priority}
        department={department}
      />
    );
  }

  return (
    <Stack.Item className={className} height="100%" mt={0}>
      <Stack fill align="center">
        <Tooltip content={job.description} position="bottom-start">
          <Stack.Item
            className="job-name"
            width="40%"
            style={{
              paddingLeft: '0.3em',
            }}
          >
            {!job.alt_titles ? (
              name
            ) : (
              <Dropdown
                className={classes([
                  'PreferencesMenu__Jobs__altTitleDropdown',
                  `PreferencesMenu__Jobs__departments--${job.department}`,
                ])}
                width="100%"
                options={job.alt_titles}
                selected={alt_title_selected}
                onSelected={(value) =>
                  act('set_job_title', { job: name, new_title: value })
                }
              />
            )}
          </Stack.Item>
        </Tooltip>

        <Stack.Item grow className="options">
          {rightSide}
        </Stack.Item>
      </Stack>
    </Stack.Item>
  );
}

type DepartmentProps = {
  department: string;
} & PropsWithChildren;

function Department(props: DepartmentProps) {
  const { children, department: name } = props;
  const className = `PreferencesMenu__Jobs__departments--${name}`;

  const data = useServerPrefs();
  if (!data) return;

  const { departments, jobs } = data.jobs;
  const department = departments[name];

  // This isn't necessarily a bug, it's like this
  // so that you can remove entire departments without
  // having to edit the UI.
  // This is used in events, for instance.
  if (!department) {
    return null;
  }

  const jobsForDepartment = sortJobs(
    Object.entries(jobs).filter(([_, job]) => job.department === name),
    department.head,
  );

  return (
    <Box>
      <Stack fill vertical g={0}>
        {jobsForDepartment.map(([name, job]) => {
          return (
            <JobRow
              className={classes([
                className,
                name === department.head && 'head',
              ])}
              key={name}
              job={job}
              name={name}
              department={name}
            />
          );
        })}
      </Stack>

      {children}
    </Box>
  );
}

function JoblessRoleDropdown(props) {
  const { act, data } = useBackend<PreferencesMenuData>();
  const selected = data.character_preferences.misc.joblessrole;

  const options = [
    {
      displayText: `Join as ${data.overflow_role} if unavailable`,
      value: JoblessRole.BeOverflow,
    },
    {
      displayText: `Join as a random job if unavailable`,
      value: JoblessRole.BeRandomJob,
    },
    {
      displayText: `Return to lobby if unavailable`,
      value: JoblessRole.ReturnToLobby,
    },
  ];

  const selection = options?.find(
    (option) => option.value === selected,
  )!.displayText;

  return (
    <Box position="absolute" right={0} width="30%">
      <Dropdown
        width="100%"
        selected={selection}
        onSelected={createSetPreference(act, 'joblessrole')}
        options={options}
      />
    </Box>
  );
}

export function JobsPage() {
  return (
    <>
      <JoblessRoleDropdown />
      <Stack vertical fill>
        <Stack.Item mt={15}>
          <Stack fill g={1} className="PreferencesMenu__Jobs">
            <Stack.Item>
              <Stack vertical>
                <Department department="Engineering" />
                <Department department="Science" />
                <Department department="Medical" />
              </Stack>
            </Stack.Item>
            <Stack.Item mt={-5.9}>
              <Stack vertical>
                <Department department="Captain" />
                <Department department="Command" />
                <Department department="Service" />
                <Department department="Assistant" />
              </Stack>
            </Stack.Item>
            <Stack.Item>
              <Stack vertical>
                <Department department="Security" />
                <Department department="Cargo" />
                <Department department="Silicon" />
              </Stack>
            </Stack.Item>
          </Stack>
        </Stack.Item>
      </Stack>
    </>
  );
}
