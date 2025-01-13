# DBD Schedule
## Load packages
library(jsonlite)
library(tidyverse)

# Schedule A
## Create schedule
json_text <- '[
    {
        "session": "1",
        "date": "18.04.2024",
        "topic": "Einführung & Überblick", 
        "exercise": "",
        "presenter": "AM & CA"
    },
    {
        "session": "",
        "date": "📚",
        "topic": "**Teil 1: Systematic Review**", 
        "exercise": "",
        "presenter": ""
    },
    {
        "session": "2",
        "date": "25.04.2024",
        "topic": "Einführung in Systematic Reviews I", 
        "exercise": "R-Einführung",
        "presenter": "AM"
    },
    {
        "session": "3",
        "date": "02.05.2024",
        "topic": "Einführung in Systematic Reviews II", 
        "exercise": "R-Einführung",
        "presenter": "AM"
    },
    {
        "session": "",
        "date": "09.05.2024",
        "topic": "🏖️ *Feiertag*",
        "exercise": "R-Einführung",
        "presenter": ""
    },
    {
        "session": "4",
        "date": "16.05.2024",
        "topic": "Automatisierung von SRs & KI-Tools", 
        "exercise": "R-Einführung",
        "presenter": "AM"
    },
    {
        "session": "",
        "date": "23.05.2024",
        "topic": "🍻 *WiSo-Projekt-Woche*",
        "exercise": "R-Einführung",
        "presenter": ""
    },
    {
        "session": "5",
        "date": "04.06.2024",
        "topic": "🍕 Gastvortrag: Prof. Dr. Emese Domahidi", 
        "exercise": "R-Einführung",
        "presenter": "ED"
    },
    {
        "session": "6",
        "date": "06.06.2024",
        "topic": "Automatisierung von SRs & KI-Tools", 
        "exercise": "R-Einführung",
        "presenter": "AM"
    },
    {
        "session": "",
        "date": "💻",
        "topic": "**Teil 2: Text as Data & Unsupervised Machine Learning**", 
        "exercise": "",
        "presenter": ""
    },
    {
        "session": "7",
        "date": "13.06.2024",
        "topic": "Introduction to Text as Data", 
        "exercise": "zur Sitzung",
        "presenter": "CA"
    },
    {
        "session": "8",
        "date": "20.06.2024",
        "topic": "Text processing", 
        "exercise": "zur Sitzung",
        "presenter": "CA"
    },
    {
        "session": "9",
        "date": "27.06.2024",
        "topic": "Unsupervised Machine Learning I", 
        "exercise": "zur Sitzung",
        "presenter": "CA"
    },
    {
        "session": "10",
        "date": "04.07.2024",
        "topic": "Unsupervised Machine Learning II", 
        "exercise": "zur Sitzung",
        "presenter": "CA & AM"
    },
    {
        "session": "11",
        "date": "11.07.2024",
        "topic": "Recap & Ausblick", 
        "exercise": "zur Sitzung",
        "presenter": "CA & AM"
    },
    {
        "session": "12",
        "date": "18.07.2024",
        "topic": "🏁 Semesterabschluss", 
        "exercise": "zur Sitzung",
        "presenter": "CA & AM"
    }
]'

## Load schedule to environment
schedule <- fromJSON(json_text) %>% tibble()

gt::gt(schedule)
