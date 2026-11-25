.class final Lcom/isaigu/gymapp/ai/CloudVoice$Local;
.super Ljava/lang/Object;
.source "CloudVoice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/CloudVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Local"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Local;->text:Ljava/lang/String;

    .line 403
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Local;->id:Ljava/lang/String;

    .line 404
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 408
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$500()Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_e

    .line 410
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Local;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Local;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;->sayLocal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 412
    :cond_e
    return-void
.end method
