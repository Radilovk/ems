.class public final Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
.super Ljava/lang/Object;
.source "XemsUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stepper"
.end annotation


# instance fields
.field public final unit:Landroid/widget/TextView;

.field public final value:Landroid/widget/TextView;

.field public final view:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 383
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->value:Landroid/widget/TextView;

    .line 384
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->unit:Landroid/widget/TextView;

    .line 385
    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->value:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->unit:Landroid/widget/TextView;

    if-eqz p2, :cond_1c

    move-object v0, p2

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->unit:Landroid/widget/TextView;

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    return-void

    .line 389
    :cond_1c
    const-string v0, ""

    goto :goto_a

    .line 390
    :cond_1f
    const/16 v0, 0x8

    goto :goto_18
.end method
