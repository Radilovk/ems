.class final Lcom/isaigu/gymapp/ai/WakeSetup$Wait;
.super Ljava/lang/Object;
.source "WakeSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Wait"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final n:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;->a:Landroid/app/Activity;

    .line 168
    iput p2, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;->n:I

    .line 169
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    :cond_8
    :goto_8
    return-void

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeSetup;->open(Landroid/app/Activity;)V

    goto :goto_8

    .line 178
    :cond_18
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;->n:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_8

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeSetup;->waitFor(Landroid/app/Activity;I)V

    goto :goto_8
.end method
