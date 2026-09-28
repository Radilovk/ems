.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;
.super Ljava/lang/Object;
.source "XiaomiCloudAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final bands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;"
        }
    .end annotation
.end field

.field public final session:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;->bands:Ljava/util/List;

    .line 258
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Result;->session:Ljava/lang/String;

    .line 259
    return-void
.end method
