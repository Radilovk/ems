.class public final Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;
.super Lorg/apache/poi/hssf/util/HSSFColor;
.source "HSSFColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/util/HSSFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LIGHT_YELLOW"
.end annotation


# static fields
.field public static final hexString:Ljava/lang/String; = "FFFF:FFFF:9999"

.field public static final index:S = 0x2bs

.field public static final triplet:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1281
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;->triplet:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xffs
        0xffs
        0x99s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1277
    invoke-direct {p0}, Lorg/apache/poi/hssf/util/HSSFColor;-><init>()V

    return-void
.end method


# virtual methods
.method public getHexString()Ljava/lang/String;
    .locals 1

    .line 1299
    const-string v0, "FFFF:FFFF:9999"

    return-object v0
.end method

.method public getIndex()S
    .locals 1

    .line 1289
    const/16 v0, 0x2b

    return v0
.end method

.method public getTriplet()[S
    .locals 1

    .line 1294
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;->triplet:[S

    return-object v0
.end method
