.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;
.super Ljava/lang/Object;
.source "XiaomiBandProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntResult"
.end annotation


# instance fields
.field final pos:I

.field final value:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    .line 139
    iput p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->pos:I

    .line 140
    return-void
.end method
