page 50100 "StudentList"
{
    Caption = 'Student List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(StudentID; Rec.StudentID)
                {
                    Editable = false;
                    //TableRelation = Student.StudentID;
                }
                field(Name; Rec.Name)
                {

                }
                field(Vorname; Rec.Vorname)
                {

                }
                field(Adresse1; Rec.Address1)
                {

                }
                field(Adresse2; Rec.Address2)
                {

                }
                field(PLZ; Rec.PLZ)
                {

                }
                field(City; Rec.City)
                {

                }
            }
        }
    }
    actions
    {
        // Adds an action on the Actions menu of the action bar that opens the page Customer Ledger Entries. 
        area(Navigation)
        {
            action("Show Grades")
            {
                ApplicationArea = All;
                RunObject = page "GradesList";
                RunPageLink = "StudentID" = field("StudentID");
                trigger OnAction();
                begin

                end;
            }
        }
    }
}