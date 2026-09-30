.class final Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;
.super Ljava/lang/Object;
.source "PauseSetting.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/PauseSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Toggle"
.end annotation


# instance fields
.field private final b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

.field private final strength:Lcom/isaigu/gymapp/dialog/PauseSetting$Step;

.field private final sub:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bean/ProgramDataBean;Landroid/view/View;Lcom/isaigu/gymapp/dialog/PauseSetting$Step;)V
    .registers 4

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 109
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->sub:Landroid/view/View;

    .line 110
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->strength:Lcom/isaigu/gymapp/dialog/PauseSetting$Step;

    .line 111
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 6

    .prologue
    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-boolean p1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 116
    if-eqz p1, :cond_30

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-gtz v0, :cond_11

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 120
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-gtz v0, :cond_2b

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v1, 0xa

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->b:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 123
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->strength:Lcom/isaigu/gymapp/dialog/PauseSetting$Step;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->show()V

    .line 125
    :cond_30
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;->sub:Landroid/view/View;

    if-eqz p1, :cond_39

    const/4 v0, 0x0

    :goto_35
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void

    .line 125
    :cond_39
    const/16 v0, 0x8

    goto :goto_35
.end method
