table 50103 "SeminarParticipantLine"
{
    DataClassification = CustomerContent;
    fields
    {
        field(1; "SeminarID"; Code[20])
        {
            Caption = 'Seminar ID';
            DataClassification = CustomerContent;
            TableRelation = Seminar.SeminarID;
        }
        field(2; "Seminar Name"; Text[100])
        {
            Caption = 'Seminar Name';
            //DataClassification = CustomerContent;
            //TableRelation = Seminar;
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Seminar."Seminar Name" where("SeminarID" = field(SeminarID)));
        }
        field(3; "StudentID"; Code[20])
        {
            Caption = 'Student ID';
            DataClassification = CustomerContent;
            TableRelation = Student.StudentID;
        }

        field(4; StudentName; Text[100])
        {
            Caption = 'Student Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Student.Name where("StudentID" = field("StudentID"))); //and where(("SeminarID") = field("SeminarID")));
        }
        field(5; Date; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(6; Grade; Code[10])
        {
            Caption = 'Grade';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "SeminarID", "StudentID")
        {
            Clustered = true;
        }
    }

}