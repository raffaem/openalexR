# concept_abbrev <- tibble::tribble(
#                                 ~id,           ~display_name, ~abbreviation,
#    "https://openalex.org/C41008148",      "Computer science",  "Comput Sci",
#    "https://openalex.org/C71924100",              "Medicine",         "Med",
#   "https://openalex.org/C185592680",             "Chemistry",        "Chem",
#    "https://openalex.org/C15744967",            "Psychology",     "Psychol",
#    "https://openalex.org/C86803240",               "Biology",        "Biol",
#    "https://openalex.org/C17744445",     "Political science",   "Polit Sci",
#   "https://openalex.org/C192562407",     "Materials science",   "Mater Sci",
#   "https://openalex.org/C142362112",                   "Art",         "Art",
#   "https://openalex.org/C144133560",              "Business",         "Bus",
#   "https://openalex.org/C205649164",             "Geography",         "Geo",
#   "https://openalex.org/C121332964",               "Physics",        "Phys",
#    "https://openalex.org/C39432304", "Environmental science", "Environ Sci",
#    "https://openalex.org/C33923547",           "Mathematics",        "Math",
#   "https://openalex.org/C138885662",            "Philosophy",        "Phil",
#   "https://openalex.org/C144024400",             "Sociology",      "Sociol",
#    "https://openalex.org/C95457728",               "History",        "Hist",
#   "https://openalex.org/C127313418",               "Geology",        "Geol",
#   "https://openalex.org/C127413603",           "Engineering",         "Eng",
#   "https://openalex.org/C162324750",             "Economics",        "Econ"
# )
concept_abbrev <- tibble::tribble(
                               ~id,                                  ~display_name, ~abbreviation,
  "https://openalex.org/fields/27",                                     "Medicine",         "Med",
  "https://openalex.org/fields/31",                        "Physics and Astronomy",        "Phys",
  "https://openalex.org/fields/19",                 "Earth and Planetary Sciences",       "Earth",
  "https://openalex.org/fields/16",                                    "Chemistry",        "Chem",
  "https://openalex.org/fields/11",         "Agricultural and Biological Sciences",        "Biol",
  "https://openalex.org/fields/13", "Biochemistry, Genetics and Molecular Biology",     "Biochem",
  "https://openalex.org/fields/12",                          "Arts and Humanities",        "Arts",
  "https://openalex.org/fields/33",                              "Social Sciences",     "Soc Sci",
  "https://openalex.org/fields/28",                                 "Neuroscience",       "Neuro",
  "https://openalex.org/fields/18",                            "Decision Sciences",     "Dec Sci",
  "https://openalex.org/fields/25",                            "Materials Science",     "Mat Sci",
  "https://openalex.org/fields/22",                                  "Engineering",         "Eng",
  "https://openalex.org/fields/23",                        "Environmental Science",     "Env Sci",
  "https://openalex.org/fields/24",                  "Immunology and Microbiology",        "Immu",
  "https://openalex.org/fields/36",                           "Health Professions",      "Health",
  "https://openalex.org/fields/20",          "Economics, Econometrics and Finance",        "Econ",
  "https://openalex.org/fields/32",                                   "Psychology",       "Psych",
  "https://openalex.org/fields/14",          "Business, Management and Accounting",         "Bus",
  "https://openalex.org/fields/17",                             "Computer Science",    "Comp Sci",
  "https://openalex.org/fields/30",   "Pharmacology, Toxicology and Pharmaceutics",       "Pharm"
)

oa2df_coverage <- list()
for (entity in setdiff(oa_entities(), "concepts")) {
  oa2df_coverage[[entity]] <- readr::read_csv(
    sprintf("data-raw/coverage-%s.csv", entity),
    show_col_types = FALSE
  )
}

usethis::use_data(oa2df_coverage, overwrite = TRUE)
usethis::use_data(concept_abbrev, overwrite = TRUE)
