# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

departments = Department.create([{name:"Human Capital Management"}, {name:"Engineering"},{name:"Accounting"},{name:"Marketing"},{name:"Litigation"},{name:"Global Capital Markets"},{name:"Customer Success"}, ])

employees = Employee.create(
    [
        {
            name: "John Doe",
            title: "Analyst",
            location:"New York",
            direct:"(212) 555-3028",
            office:"2442",
            department_id: 1
        },
        {
            name: "Jane Doe",
            title: "Software Engineer",
            location:"New York",
            direct:"(212) 555-9123",
            office:"2747",
            department_id: 2
        },
        {
            name: "Arnold Palmer",
            title: "Software Engineer",
            location:"New York",
            direct:"(212) 555-7300",
            office:"2749",
            department_id: 2
        },
        {
            name: "Lisa Macintosh",
            title: "Associate",
            location:"New York",
            direct:"(212) 555-0912",
            office:"2749",
            department_id: 5
        },
        {
            name: "Thomas Ford",
            title: "Account Manager",
            location:"Los Angeles",
            direct:"(408) 555-1293",
            office:"6C",
            department_id: 4
        },
        {
            name: "Hannah Feldt",
            title: "Associate",
            location:"Los Angeles",
            direct:"(408) 555-1217",
            office:"6A",
            department_id: 7
        }
    ]
)