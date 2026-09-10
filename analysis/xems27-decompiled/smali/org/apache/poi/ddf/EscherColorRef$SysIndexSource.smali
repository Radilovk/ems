.class public final enum Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
.super Ljava/lang/Enum;
.source "EscherColorRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherColorRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SysIndexSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_OR_LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "FILL_COLOR"

    const/4 v2, 0x0

    const/16 v3, 0xf0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 34
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "LINE_OR_FILL_COLOR"

    const/4 v3, 0x1

    const/16 v4, 0xf1

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 36
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "LINE_COLOR"

    const/4 v4, 0x2

    const/16 v5, 0xf2

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 38
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "SHADOW_COLOR"

    const/4 v5, 0x3

    const/16 v6, 0xf3

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 40
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "CURRENT_OR_LAST_COLOR"

    const/4 v6, 0x4

    const/16 v7, 0xf4

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 42
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "FILL_BACKGROUND_COLOR"

    const/4 v7, 0x5

    const/16 v8, 0xf5

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 44
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "LINE_BACKGROUND_COLOR"

    const/4 v8, 0x6

    const/16 v9, 0xf6

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 46
    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const-string v1, "FILL_OR_LINE_COLOR"

    const/4 v9, 0x7

    const/16 v10, 0xf7

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_OR_LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    .line 30
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    sget-object v10, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v10, v1, v2

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    invoke-virtual {v0}, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-object v0
.end method
