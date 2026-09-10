.class public final enum Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
.super Ljava/lang/Enum;
.source "EscherColorRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherColorRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SysIndexProcedure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum ADD_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum DARKEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum LIGHTEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum REVERSE_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum SUB_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum THRESHOLD:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;


# instance fields
.field mask:Lorg/apache/poi/util/BitField;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 64
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "DARKEN_COLOR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->DARKEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    .line 70
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "LIGHTEN_COLOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->LIGHTEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    .line 75
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "ADD_GRAY_LEVEL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->ADD_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    .line 80
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "SUB_GRAY_LEVEL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->SUB_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    .line 86
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "REVERSE_GRAY_LEVEL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->REVERSE_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    .line 92
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "THRESHOLD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->THRESHOLD:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    .line 97
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "INVERT_AFTER"

    const/16 v9, 0x20

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    .line 103
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "INVERT_HIGHBIT_AFTER"

    const/4 v9, 0x7

    const/16 v10, 0x40

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    .line 58
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    sget-object v10, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->DARKEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    aput-object v10, v1, v2

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->LIGHTEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->ADD_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->SUB_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->REVERSE_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->THRESHOLD:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    new-instance p1, Lorg/apache/poi/util/BitField;

    invoke-direct {p1, p3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    .locals 1

    .line 58
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    invoke-virtual {v0}, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    return-object v0
.end method
