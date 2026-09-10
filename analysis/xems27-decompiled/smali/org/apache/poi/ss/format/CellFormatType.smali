.class public abstract enum Lorg/apache/poi/ss/format/CellFormatType;
.super Ljava/lang/Enum;
.source "CellFormatType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/format/CellFormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/format/CellFormatType;

.field public static final enum DATE:Lorg/apache/poi/ss/format/CellFormatType;

.field public static final enum ELAPSED:Lorg/apache/poi/ss/format/CellFormatType;

.field public static final enum GENERAL:Lorg/apache/poi/ss/format/CellFormatType;

.field public static final enum NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

.field public static final enum TEXT:Lorg/apache/poi/ss/format/CellFormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lorg/apache/poi/ss/format/CellFormatType$1;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatType;->GENERAL:Lorg/apache/poi/ss/format/CellFormatType;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/format/CellFormatType$2;

    const-string v1, "NUMBER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/format/CellFormatType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    .line 46
    new-instance v0, Lorg/apache/poi/ss/format/CellFormatType$3;

    const-string v1, "DATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/format/CellFormatType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    .line 55
    new-instance v0, Lorg/apache/poi/ss/format/CellFormatType$4;

    const-string v1, "ELAPSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/format/CellFormatType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatType;->ELAPSED:Lorg/apache/poi/ss/format/CellFormatType;

    .line 64
    new-instance v0, Lorg/apache/poi/ss/format/CellFormatType$5;

    const-string v1, "TEXT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/format/CellFormatType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatType;->TEXT:Lorg/apache/poi/ss/format/CellFormatType;

    .line 25
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/poi/ss/format/CellFormatType;

    sget-object v7, Lorg/apache/poi/ss/format/CellFormatType;->GENERAL:Lorg/apache/poi/ss/format/CellFormatType;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/format/CellFormatType;->ELAPSED:Lorg/apache/poi/ss/format/CellFormatType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/poi/ss/format/CellFormatType;->$VALUES:[Lorg/apache/poi/ss/format/CellFormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/poi/ss/format/CellFormatType$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/poi/ss/format/CellFormatType$1;

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/apache/poi/ss/format/CellFormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/format/CellFormatType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/format/CellFormatType;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatType;->$VALUES:[Lorg/apache/poi/ss/format/CellFormatType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/format/CellFormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/format/CellFormatType;

    return-object v0
.end method


# virtual methods
.method abstract formatter(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatter;
.end method

.method abstract isSpecial(C)Z
.end method
