pageextension 50501 SalesOrderLinePageExt extends "Sales Order Subform"
{
    layout
    {
        addafter("No.")
        {
            field(Priority; Rec.Priority)
            {
                ApplicationArea = All;
                ToolTip = 'Priority';
                Editable = false;
            }
        }
        addafter("Priority")
        {
            field(Capacity; Rec.Capacity)
            {
                ApplicationArea = All;
                ToolTip = 'Capacity %';
                Editable = true;

                trigger OnValidate()
                begin
                    if (Rec.Capacity < 0) or (Rec.Capacity > 100) then
                        Error('Capacity must be between 0 and 100.');
                end;
            }
        }
    }


}