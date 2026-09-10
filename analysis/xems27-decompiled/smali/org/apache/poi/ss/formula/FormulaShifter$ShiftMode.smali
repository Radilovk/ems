.class final enum Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
.super Ljava/lang/Enum;
.source "FormulaShifter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/FormulaShifter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ShiftMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field public static final enum Row:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field public static final enum Sheet:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    const-string v1, "Row"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->Row:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    .line 44
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    const-string v1, "Sheet"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->Sheet:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    .line 42
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    sget-object v4, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->Row:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->$VALUES:[Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->$VALUES:[Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    return-object v0
.end method
