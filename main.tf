provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}


62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
Code panel - press c to focus line 1.
provider "google" {
  project = "project-with-many-assettypes"
  region  = "us-central1"
}

resource "google_sql_database_instance" "violating_sql_instance" {
  name             = "my-sql-instance-new"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "non_violating_sql_instance" {
  name             = "my-sql-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_bigquery_dataset" "violating_bq_dataset" {
  dataset_id                  = "violating_bq_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    special_group = "allAuthenticatedUsers"
  }
}

resource "google_bigquery_dataset" "non_violating_bq_dataset" {
  dataset_id                  = "non_violating_bq_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 36000000
}

resource "google_pubsub_topic" "violating_topic" {
  name = "violating_topic-new"
  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_topic" "non_violating_topic" {
  name = "non_violating_topic"
  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}

resource "google_storage_bucket" "violating_bucket" {
  name     = "violating_bucket-new" # Replace with a unique name
  location = "us-central1"          # Replace with desired region
  project  = "project-with-many-assettypes"
}

resource "google_storage_bucket" "non_violating_bucket" {
  name     = "non_violating_bucket" # Replace with a unique name
  location = "us-central1"          # Replace with desired region
  project  = "project-with-many-assettypes"
}

resource "google_spanner_instance" "violating_spanner_instance" {
  name         = "my-spanner-instance1"
  config       = "regional-us-central1"
  display_name = "My Spanner Instance"
  num_nodes    = 2
}

resource "google_spanner_instance" "non_violating_spanner_instance" {
  name         = "my-spanner-instance2"
  config       = "regional-us-central1"
  display_name = "My Spanner Instance"
  num_nodes    = 3
}
