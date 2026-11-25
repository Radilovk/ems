.class final Lcom/isaigu/gymapp/ai/CloudVoice$Done;
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
    name = "Done"
.end annotation


# instance fields
.field final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Done;->id:Ljava/lang/String;

    .line 420
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 424
    # getter for: Lcom/isaigu/gymapp/ai/CloudVoice;->fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->access$500()Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_b

    .line 426
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Done;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;->done(Ljava/lang/String;)V

    .line 428
    :cond_b
    return-void
.end method
