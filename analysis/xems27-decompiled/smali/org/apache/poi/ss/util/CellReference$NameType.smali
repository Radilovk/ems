.class public final enum Lorg/apache/poi/ss/util/CellReference$NameType;
.super Ljava/lang/Enum;
.source "CellReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/CellReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/util/CellReference$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/util/CellReference$NameType;

.field public static final enum BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

.field public static final enum CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

.field public static final enum COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

.field public static final enum NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

.field public static final enum ROW:Lorg/apache/poi/ss/util/CellReference$NameType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    new-instance v0, Lorg/apache/poi/ss/util/CellReference$NameType;

    const-string v1, "CELL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 38
    new-instance v0, Lorg/apache/poi/ss/util/CellReference$NameType;

    const-string v1, "NAMED_RANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/util/CellReference$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/util/CellReference$NameType;->NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/util/CellReference$NameType;

    const-string v1, "COLUMN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/util/CellReference$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 40
    new-instance v0, Lorg/apache/poi/ss/util/CellReference$NameType;

    const-string v1, "ROW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/util/CellReference$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 41
    new-instance v0, Lorg/apache/poi/ss/util/CellReference$NameType;

    const-string v1, "BAD_CELL_OR_NAMED_RANGE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/util/CellReference$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 36
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/poi/ss/util/CellReference$NameType;

    sget-object v7, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->$VALUES:[Lorg/apache/poi/ss/util/CellReference$NameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lorg/apache/poi/ss/util/CellReference$NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/poi/ss/util/CellReference$NameType;->$VALUES:[Lorg/apache/poi/ss/util/CellReference$NameType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/util/CellReference$NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v0
.end method
