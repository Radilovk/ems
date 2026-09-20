.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliderChangeListener"
.end annotation


# instance fields
.field private final field:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

.field private final min:I

.field private final valueView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;Landroid/widget/TextView;I)V
    .registers 4

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;->field:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    .line 173
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;->valueView:Landroid/widget/TextView;

    .line 174
    iput p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;->min:I

    .line 175
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 179
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;->field:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    iget p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;->min:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->value:I

    .line 180
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;->valueView:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    .line 181
    iget-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderChangeListener;->field:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;

    iget p2, p2, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->value:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_16
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 187
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 191
    return-void
.end method
