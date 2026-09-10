.class public final Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;
.super Lorg/apache/poi/hssf/util/HSSFColor;
.source "HSSFColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/util/HSSFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DARK_TEAL"
.end annotation


# static fields
.field public static final hexString:Ljava/lang/String; = "0:3333:6666"

.field public static final index:S = 0x38s

.field public static final triplet:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;->triplet:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x33s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lorg/apache/poi/hssf/util/HSSFColor;-><init>()V

    return-void
.end method


# virtual methods
.method public getHexString()Ljava/lang/String;
    .locals 1

    .line 359
    const-string v0, "0:3333:6666"

    return-object v0
.end method

.method public getIndex()S
    .locals 1

    .line 349
    const/16 v0, 0x38

    return v0
.end method

.method public getTriplet()[S
    .locals 1

    .line 354
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;->triplet:[S

    return-object v0
.end method
