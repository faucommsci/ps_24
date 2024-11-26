# DBD Schedule
## Load packages
library(jsonlite)
library(tidyverse)

# Schedule A
## Create schedule
json_text <- '[
    {
        "session": "1",
        "date": "30.10.2024",
        "topic": "Kick-Off"
    },
    {
        "session": "2",
        "date": "06.11.2024",
        "topic": "Workflow & Analysestrategie I"
    },
    {
        "session": "3",
        "date": "13.11.2024",
        "topic": "Workflow & Analysestrategie II"
    },
    {
        "session": "4",
        "date": "20.11.2024",
        "topic": "Gruppenarbeit"
    },
    {
        "session": "5",
        "date": "27.11.2024",
        "topic": "All things R: Datensatzvorstellung & Refresher"
    },
    {
        "session": "6",
        "date": "04.12.2024",
        "topic": "Update zum Workflow I"
    },
    {
        "session": "7",
        "date": "11.12.2024",
        "topic": "Gruppenarbeit"
    },
    {
        "session": "8",
        "date": "18.12.2024",
        "topic": "All things R"
    },
    {
        "session": "9",
        "date": "08.01.2025",
        "topic": "Update zum Workflow II"
    },
    {
        "session": "10",
        "date": "15.01.2025",
        "topic": "Gruppenarbeit"
    },
    {
        "session": "11",
        "date": "22.01.2025",
        "topic": "All things R"
    },
    {
        "session": "",
        "date": "27.01.2025",
        "topic": "Sondertermin: Vorstellung Projektseminar"
    },
    {
        "session": "12",
        "date": "29.01.2025",
        "topic": "Abschlusspräsentation (inkl. Feedback)"
    },
    {
        "session": "13",
        "date": "05.02.2025",
        "topic": "🏁 Semesterabschluss: Projektbericht & Evaluation"
    }
]'

## Load schedule to environment
schedule <- fromJSON(json_text) %>% tibble()