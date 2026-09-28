.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;
.super Ljava/lang/Object;
.source "XiaomiBandCrypto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionKeys"
.end annotation


# instance fields
.field decIndex:I

.field decKey:[B

.field decNonce:[B

.field encIndex:I

.field encKey:[B

.field encNonce:[B


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
