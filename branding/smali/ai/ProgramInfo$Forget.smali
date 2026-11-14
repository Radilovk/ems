.class final Lcom/isaigu/gymapp/ai/ProgramInfo$Forget;
.super Ljava/lang/Object;
.source "ProgramInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ProgramInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Forget"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 231
    # setter for: Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramInfo;->access$002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 232
    # setter for: Lcom/isaigu/gymapp/ai/ProgramInfo;->capName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramInfo;->access$102(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 233
    # setter for: Lcom/isaigu/gymapp/ai/ProgramInfo;->capText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramInfo;->access$202(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 234
    # setter for: Lcom/isaigu/gymapp/ai/ProgramInfo;->shown:Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramInfo;->access$302(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 235
    return-void
.end method
