/// Will show the current ammo count as a fraction in the user's hands (e.g 5/10).
#define COUNTER_FRACTION "curr_ammo/max_ammo"
/// Will show the current ammo count as a percentage in the user's hands. Rounds to the nearest whole number and shows a % sign.
#define COUNTER_PERCENTAGE "round(curr_ammo/max_ammo*100)%"

/datum/element/ammo_counter
	/// Current ammo count.
	var/curr_ammo
	/// Max ammo count.
	var/max_ammo
	/// The method by which the counter should be displayed, either as a fraction or percentage.
	var/counter_output_method = COUNTER_FRACTION

/datum/element/ammo_counter/Attach(datum/target, mob/living/user)
	. = ..()

/datum/element/ammo_counter/Detach(datum/source)
	. = ..()

/datum/element/ammo_counter/proc/calculate_ammo(obj/item/source, max_ammo, curr_ammo)
	if(max_ammo <= 0)
		return
	source.max_ammo = max_ammo
	source.curr_ammo = curr_ammo

	if(isnull(curr_ammo))
		source.curr_ammo = 0

	if(isnull(counter_output_method))
		counter_output_method = COUNTER_FRACTION

	switch(counter_output_method)
		if(COUNTER_FRACTION)
			return "[curr_ammo]/[max_ammo]"
		if(COUNTER_PERCENTAGE)
			return "[round(curr_ammo/max_ammo*100)]%"

/datum/element/ammo_counter/proc/build_text(obj/item/source)
	if(isnull(curr_ammo) || isnull(max_ammo))
		return

	return calculate_ammo(source, max_ammo, curr_ammo)
