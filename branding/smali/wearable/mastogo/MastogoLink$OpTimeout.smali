.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;
.super Ljava/lang/Object;
.source "MastogoLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpTimeout"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

.field final token:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;I)V
    .registers 3

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    .line 344
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;->token:I

    .line 345
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->busy:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->opToken:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;->token:I

    if-ne v0, v1, :cond_2d

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->log(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->onWriteDone()V

    .line 353
    :cond_2d
    return-void
.end method
