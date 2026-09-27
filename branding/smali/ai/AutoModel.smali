.class public final Lcom/isaigu/gymapp/ai/AutoModel;
.super Ljava/lang/Object;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoModel$Plan;,
        Lcom/isaigu/gymapp/ai/AutoModel$Phase;,
        Lcom/isaigu/gymapp/ai/AutoModel$Step;,
        Lcom/isaigu/gymapp/ai/AutoModel$Window;,
        Lcom/isaigu/gymapp/ai/AutoModel$Input;,
        Lcom/isaigu/gymapp/ai/AutoModel$Extra;,
        Lcom/isaigu/gymapp/ai/AutoModel$HrUse;,
        Lcom/isaigu/gymapp/ai/AutoModel$Intensity;,
        Lcom/isaigu/gymapp/ai/AutoModel$Kind;,
        Lcom/isaigu/gymapp/ai/AutoModel$Goal;
    }
.end annotation


# static fields
.field public static final ABS:I = 0x1

.field public static final ARMS:I = 0x4

.field public static final BACK:I = 0x6

.field public static final BACK_THIGH:I = 0x9

.field public static final CALF:I = 0x3

.field public static final CHANNELS:I = 0xa

.field public static final CHEST:I = 0x0

.field public static final DISPLAY_ORDER:[I

.field public static final FRONT_THIGH:I = 0x2

.field public static final GLUTES:I = 0x8

.field public static final LOWER_BACK:I = 0x7

.field public static final TRAPS:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoModel;->DISPLAY_ORDER:[I

    return-void

    :array_a
    .array-data 4
        0x3
        0x2
        0x9
        0x8
        0x1
        0x7
        0x6
        0x5
        0x0
        0x4
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zones(IIIIIIIIII)[I
    .registers 12

    .prologue
    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 44
    const/4 v1, 0x3

    aput p0, v0, v1

    .line 45
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 46
    const/16 v1, 0x9

    aput p2, v0, v1

    .line 47
    const/16 v1, 0x8

    aput p3, v0, v1

    .line 48
    const/4 v1, 0x1

    aput p4, v0, v1

    .line 49
    const/4 v1, 0x7

    aput p5, v0, v1

    .line 50
    const/4 v1, 0x6

    aput p6, v0, v1

    .line 51
    const/4 v1, 0x5

    aput p7, v0, v1

    .line 52
    const/4 v1, 0x0

    aput p8, v0, v1

    .line 53
    const/4 v1, 0x4

    aput p9, v0, v1

    .line 54
    return-object v0
.end method
