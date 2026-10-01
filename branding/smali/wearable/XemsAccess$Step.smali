.class final Lcom/isaigu/gymapp/wearable/XemsAccess$Step;
.super Ljava/lang/Object;
.source "XemsAccess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/XemsAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final k:I

.field private final polls:I


# direct methods
.method constructor <init>(Landroid/app/Activity;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    .line 124
    iput p2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    .line 125
    iput p3, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->polls:I

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    iget v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->polls:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_19

    .line 132
    :cond_14
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$002(Z)Z

    .line 159
    :goto_18
    return-void

    .line 135
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_55

    .line 136
    # getter for: Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->polls:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;-><init>(Landroid/app/Activity;II)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_37} :catch_38

    goto :goto_18

    .line 155
    :catch_38
    move-exception v0

    .line 156
    # setter for: Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$002(Z)Z

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XemsAccess.step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 139
    :cond_55
    :try_start_55
    iget v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    if-nez v0, :cond_a8

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->missingRuntime(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 141
    array-length v1, v0

    if-lez v1, :cond_8e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_8e

    .line 142
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    const/16 v2, 0x5753

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 143
    const-string v1, "perm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_8e
    :goto_8e
    # getter for: Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->polls:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;-><init>(Landroid/app/Activity;II)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_18

    .line 146
    :cond_a8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/XemsAccess;->special(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_8e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    # invokes: Lcom/isaigu/gymapp/wearable/XemsAccess;->askedThisVersion(Landroid/content/Context;I)Z
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$200(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 148
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    # invokes: Lcom/isaigu/gymapp/wearable/XemsAccess;->markAsked(Landroid/content/Context;I)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$300(Landroid/content/Context;I)V

    .line 150
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->k:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/XemsAccess;->why(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 151
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_d8} :catch_38

    goto :goto_8e
.end method
