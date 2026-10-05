.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;
.super Ljava/lang/Object;
.source "ScaleLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpTimeout"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field final token:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V
    .registers 3

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 881
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;->token:I

    .line 882
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 886
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;->token:I

    if-ne v0, v1, :cond_18

    .line 887
    const-string v0, "op timeout"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opDone()V

    .line 890
    :cond_18
    return-void
.end method
