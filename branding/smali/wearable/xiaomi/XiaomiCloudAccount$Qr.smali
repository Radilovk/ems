.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;
.super Ljava/lang/Object;
.source "XiaomiCloudAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Qr"
.end annotation


# instance fields
.field final cookie:Ljava/lang/String;

.field public final imageUrl:Ljava/lang/String;

.field final lpUrl:Ljava/lang/String;

.field final timeoutSec:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->imageUrl:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->lpUrl:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->cookie:Ljava/lang/String;

    .line 247
    iput p4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Qr;->timeoutSec:I

    .line 248
    return-void
.end method
