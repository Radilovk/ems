.class public final Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;
.super Lorg/apache/poi/hssf/util/HSSFColor;
.source "HSSFColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/util/HSSFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ORANGE"
.end annotation


# static fields
.field public static final hexString:Ljava/lang/String; = "FFFF:6666:0"

.field public static final index:S = 0x35s

.field public static final triplet:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 498
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;->triplet:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xffs
        0x66s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Lorg/apache/poi/hssf/util/HSSFColor;-><init>()V

    return-void
.end method


# virtual methods
.method public getHexString()Ljava/lang/String;
    .locals 1

    .line 516
    const-string v0, "FFFF:6666:0"

    return-object v0
.end method

.method public getIndex()S
    .locals 1

    .line 506
    const/16 v0, 0x35

    return v0
.end method

.method public getTriplet()[S
    .locals 1

    .line 511
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;->triplet:[S

    return-object v0
.end method
