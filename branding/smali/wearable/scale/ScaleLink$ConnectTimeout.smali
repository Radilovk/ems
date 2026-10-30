.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;
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
    name = "ConnectTimeout"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field final mac:Ljava/lang/String;

.field final token:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 1190
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;->token:I

    .line 1191
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;->mac:Ljava/lang/String;

    .line 1192
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;->token:I

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->connectTimeout(ILjava/lang/String;)V

    .line 1197
    return-void
.end method
