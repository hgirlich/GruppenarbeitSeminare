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
                    //ApplicationArea = All;
                    Caption = 'Student ID';
                    TableRelation = Student.StudentID;
                }
                field(Name; Rec.Name)
                {
                    //ApplicationArea = All;
                    Caption = 'Name';
                }
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}