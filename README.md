# Netflix Data Analysis

i picked up the netflix dataset from kaggle and used it to practice SQL. went through the data and tried to answer some questions i was curious about — stuff like which countries produce the most content, what ratings are most common, and how netflix's library has grown over the years.

---

## dataset

grabbed this from kaggle — [Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)

around 8,800 titles with info like type, country, director, rating, duration, genres and when it was added to netflix.

---

## tools

- MySQL Workbench
- Power BI (dashboard coming soon)

---

## questions i looked at

1. how many titles are in the dataset?
2. how many are movies vs tv shows?
3. what's the percentage split between movies and tv shows?
4. what are the most common content ratings?
5. what are the top 10 genres?
6. which countries have the most content on netflix?
7. which countries make both movies and tv shows?
8. who are the top 10 directors on netflix?
9. what's the average movie length?
10. which tv shows have the most seasons?
11. how many titles were added each year?
12. which month sees the most additions?
13. what was added after 2019?
14. how many titles came out each decade?
15. which year had the most releases?

---

## what i found

- netflix has way more movies than tv shows, roughly 70/30 split
- the US has the most content by far
- TV-MA is the most common rating
- 2019-2020 was when netflix added the most titles
- had some dirty data — a few rows had duration values sitting in the rating column, filtered those out

---

## files

```
├── netflix.sql          # all the queries
├── netflix_data.csv     # cleaned csv i used to import
├── netflix_dashboard.pbix   # power bi dashboard (coming soon)
└── README.md
```

---

## how to run it

1. import `netflix_data.csv` into mysql using the table data import wizard
2. open `netflix.sql` in mysql workbench
3. run the queries
