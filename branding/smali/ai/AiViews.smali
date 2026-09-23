.class final Lcom/isaigu/gymapp/ai/AiViews;
.super Ljava/lang/Object;
.source "AiViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiViews$Bar;,
        Lcom/isaigu/gymapp/ai/AiViews$Timeline;,
        Lcom/isaigu/gymapp/ai/AiViews$Ring;
    }
.end annotation


# static fields
.field static final BG:I = -0xf1efeb

.field static final CARD:I = -0xe8e5df

.field static final CARD2:I = -0xe0dcd4

.field static final CYAN:I = -0xff2e01

.field static final DANGER:I = -0xb2b1

.field static final MUTED:I = -0x746c5f

.field static final OK:I = -0xd1338f

.field static final STROKE:I = 0x1fffffff

.field static final TEXT:I = -0xd0b08

.field static final VIOLET:I = -0x83b201

.field static final WARN:I = -0x4fe0


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AiViews$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 34
    const v0, -0xd93926

    :goto_e
    return v0

    .line 31
    :pswitch_f
    const v0, -0xb08401

    goto :goto_e

    .line 32
    :pswitch_13
    const v0, -0x83b201

    goto :goto_e

    .line 33
    :pswitch_17
    const v0, -0x1fbf05

    goto :goto_e

    .line 30
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
