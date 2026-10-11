.class final Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;
.super Ljava/lang/Object;
.source "SuitStandard.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/SuitStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->a:Landroid/app/Activity;

    .line 163
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->root:Landroid/view/View;

    .line 164
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 4

    .prologue
    .line 169
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->get()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 175
    :goto_6
    return-void

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->set(Landroid/content/Context;I)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/bodytech/SuitStandard;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->access$000(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_6

    .line 172
    :catch_14
    move-exception v0

    .line 173
    const-string v1, "SuitStandard.pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method
