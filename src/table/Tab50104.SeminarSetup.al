table 50104 "Seminar Setup"
{

    fields
    {
        field(1; "Primary Key"; Code[20])
        {

        }

        field(10; "Seminar No. Series Code"; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
        field(11; "Student No. Series Code"; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
        field(12; "Lecturer No. Series Code"; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}