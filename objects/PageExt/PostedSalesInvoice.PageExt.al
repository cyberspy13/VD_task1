pageextension 50502 PostedsalesInvoice extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("No.")
        {
            field(Priority; Rec.Priority)
            {
                ApplicationArea = All;
                ToolTip = 'Priority';

            }
        }
        addafter("Priority")
        {
            field(Capacity; Rec.Capacity)
            {
                ApplicationArea = All;
                ToolTip = 'Capacity %';
            }
        }
    }
}
