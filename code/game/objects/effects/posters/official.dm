/obj/item/poster/random_official
	name = "random official poster"
	poster_type = /obj/structure/sign/poster/official/random
	icon_state = "rolled_official"

/obj/structure/sign/poster/official
	poster_item_name = "motivational poster"
	poster_item_desc = "An official SolsticeReach-issued poster to foster a compliant and obedient workforce. It comes with state-of-the-art adhesive backing, for easy pinning to any vertical surface."
	poster_item_icon_state = "rolled_official"
	printable = TRUE

/obj/structure/sign/poster/official/random
	name = "random official poster"
	random_basetype = /obj/structure/sign/poster/official
	icon_state = "random_official"
	never_random = TRUE

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/random, 32)
//This is being hardcoded here to ensure we don't print directionals from the library management computer because they act wierd as a poster item
/obj/structure/sign/poster/official/random/directional
	printable = FALSE

/obj/structure/sign/poster/official/here_for_your_safety
	name = "Here For Your Safety"
	desc = "A poster glorifying the vessel's security force."
	icon_state = "here_for_your_safety"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/here_for_your_safety, 32)

/obj/structure/sign/poster/official/cleanliness
	name = "Cleanliness"
	desc = "A poster warning of the dangers of poor hygiene."
	icon_state = "cleanliness"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/cleanliness, 32)

/obj/structure/sign/poster/official/help_others
	name = "Help Others"
	desc = "A poster encouraging you to help fellow crewmembers."
	icon_state = "help_others"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/help_others, 32)

/obj/structure/sign/poster/official/build
	name = "Build"
	desc = "A poster glorifying the engineering team."
	icon_state = "build"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/build, 32)

/obj/structure/sign/poster/official/bless_this_spess
	name = "Bless This Spess"
	desc = "A poster blessing this area."
	icon_state = "bless_this_spess"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/bless_this_spess, 32)

/obj/structure/sign/poster/official/science
	name = "Science"
	desc = "A poster depicting an atom."
	icon_state = "science"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/science, 32)

/obj/structure/sign/poster/official/obey
	name = "Obey"
	desc = "A poster instructing the viewer to obey authority."
	icon_state = "obey"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/obey, 32)

/obj/structure/sign/poster/official/walk
	name = "Walk"
	desc = "A poster instructing the viewer to walk instead of running."
	icon_state = "walk"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/walk, 32)

/obj/structure/sign/poster/official/state_laws
	name = "State Laws"
	desc = "A poster instructing cyborgs to state their laws."
	icon_state = "state_laws"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/state_laws, 32)

/obj/structure/sign/poster/official/get_your_legs
	name = "Get Your LEGS"
	desc = "LEGS: Leadership, Experience, Genius, Subordination."
	icon_state = "get_your_legs"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/get_your_legs, 32)

/obj/structure/sign/poster/official/do_not_question
	name = "Do Not Question"
	desc = "A poster instructing the viewer not to ask about things they aren't meant to know."
	icon_state = "do_not_question"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/do_not_question, 32)

/obj/structure/sign/poster/official/work_for_a_future
	name = "Work For A Future"
	desc = " A poster encouraging you to work for your future."
	icon_state = "work_for_a_future"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/work_for_a_future, 32)

/obj/structure/sign/poster/official/safety_internals
	name = "Safety: Internals"
	desc = "A poster instructing the viewer to wear internals in the rare environments where there is no oxygen or the air has been rendered toxic."
	icon_state = "safety_internals"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/safety_internals, 32)

/obj/structure/sign/poster/official/safety_eye_protection
	name = "Safety: Eye Protection"
	desc = "A poster instructing the viewer to wear eye protection when dealing with chemicals, smoke, or bright lights."
	icon_state = "safety_eye_protection"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/safety_eye_protection, 32)

/obj/structure/sign/poster/official/safety_report
	name = "Safety: Report"
	desc = "A poster instructing the viewer to report suspicious activity to the security force."
	icon_state = "safety_report"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/safety_report, 32)

/obj/structure/sign/poster/official/report_crimes
	name = "Report Crimes"
	desc = "A poster encouraging the swift reporting of crime or seditious behavior to vessel security."
	icon_state = "report_crimes"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/report_crimes, 32)

/obj/structure/sign/poster/official/no_erp
	name = "No ERP"
	desc = "This poster reminds the crew that Enterprise Resource Planning is not allowed by company policy, in accordance with Spinward governmental regulations on megacorporations."
	icon_state = "no_erp"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/no_erp, 32)

/obj/structure/sign/poster/official/wtf_is_co2
	name = "Carbon Dioxide"
	desc = "This informational poster teaches the viewer what carbon dioxide is."
	icon_state = "wtf_is_co2"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/wtf_is_co2, 32)

/obj/structure/sign/poster/official/phoron_effects
	name = "Phoron and the Body"
	desc = "This informational poster provides information on the effects of long-term phoron exposure on the brain."
	icon_state = "phoron_effects"

/obj/structure/sign/poster/official/phoron_effects/examine_more(mob/user)
	. = ..()
	. += span_notice("<i>You browse some of the poster's information...</i>")
	. += "\t[span_info("Phoron is classified as a Grade 1 Health Hazard, and has significant risks to health associated with chronic exposure.")]"
	. += "\t[span_info("Phoron is known to cross the blood/brain barrier and bioaccumulate in brain tissue, where it begins to result in degradation of brain function. The mechanism for attack is not yet fully known, and as such no concrete preventative advice is available barring proper use of PPE (gloves + protective jumpsuit + respirator).")]"
	. += "\t[span_info("In small doses, phoron induces confusion, short-term amnesia, and heightened aggression. These effects persist with continual exposure.")]"
	. += "\t[span_info("In individuals with chronic exposure, severe effects have been noted. Further heightened aggression, long-term amnesia, Alzheimer's symptoms, schizophrenia, macular degeneration, aneurysms, heightened risk of stroke, and Parkinsons symptoms have all been noted.")]"
	. += "\t[span_info("It is recommended that all individuals in unprotected contact with raw phoron regularly check with company health officials.")]"
	. += "\t[span_info("For more information, please check with Corporate extranet site: www.srcorp.net/health_and_safety/, or our internal risk-assessment documents (document numbers #47582-b (Phoron safety data sheets) and #64210 through #64225 (PPE regulations for working with Phoron)).")]"
	. += "\t[span_info("Solstice Reach: Always looking after eployees' health.")]"
	return .

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/phoron_effects, 32)

/obj/structure/sign/poster/official/download
	name = "You Wouldn't Download A Gun"
	desc = "A poster reminding the crew that corporate secrets should stay in the workplace."
	icon_state = "download_gun"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/official/download, 32)
