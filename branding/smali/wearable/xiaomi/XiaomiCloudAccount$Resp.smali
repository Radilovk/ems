.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;
.super Ljava/lang/Object;
.source "XiaomiCloudAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Resp"
.end annotation


# instance fields
.field final body:Ljava/lang/String;

.field final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final status:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->status:I

    .line 220
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->body:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Resp;->headers:Ljava/util/Map;

    .line 222
    return-void
.end method
