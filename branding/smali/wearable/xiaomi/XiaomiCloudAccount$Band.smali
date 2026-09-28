.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;
.super Ljava/lang/Object;
.source "XiaomiCloudAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Band"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final mac:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->mac:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->key:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;->name:Ljava/lang/String;

    .line 45
    return-void
.end method
