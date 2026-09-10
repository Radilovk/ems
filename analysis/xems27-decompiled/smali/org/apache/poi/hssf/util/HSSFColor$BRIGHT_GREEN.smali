.class public final Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;
.super Lorg/apache/poi/hssf/util/HSSFColor;
.source "HSSFColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/util/HSSFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BRIGHT_GREEN"
.end annotation


# static fields
.field public static final hexString:Ljava/lang/String; = "0:FFFF:0"

.field public static final index:S = 0xbs

.field public static final index2:S = 0x23s

.field public static final triplet:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1062
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;->triplet:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0xffs
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1057
    invoke-direct {p0}, Lorg/apache/poi/hssf/util/HSSFColor;-><init>()V

    return-void
.end method


# virtual methods
.method public getHexString()Ljava/lang/String;
    .locals 1

    .line 1075
    const-string v0, "0:FFFF:0"

    return-object v0
.end method

.method public getIndex()S
    .locals 1

    .line 1070
    const/16 v0, 0xb

    return v0
.end method

.method public getTriplet()[S
    .locals 1

    .line 1080
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;->triplet:[S

    return-object v0
.end method
