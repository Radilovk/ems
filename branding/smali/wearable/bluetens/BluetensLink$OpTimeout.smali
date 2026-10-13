.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$OpTimeout;
.super Ljava/lang/Object;
.source "BluetensLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpTimeout"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

.field final token:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;I)V
    .registers 3

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 337
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$OpTimeout;->token:I

    .line 338
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->busy:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->opToken:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$OpTimeout;->token:I

    if-ne v0, v1, :cond_2d

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->log(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->onWriteDone()V

    .line 346
    :cond_2d
    return-void
.end method
