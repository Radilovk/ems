.class public final Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;
.super Ljava/lang/Object;
.source "AiVoiceCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiVoiceCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cmd"
.end annotation


# instance fields
.field public final dir:Ljava/lang/String;

.field public final small:Z

.field public final target:Ljava/lang/String;

.field public value:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 44
    const-string v0, "set"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->value:I

    .line 38
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->dir:Ljava/lang/String;

    .line 40
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->small:Z

    .line 41
    return-void
.end method


# virtual methods
.method public channels()[I
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->target:Ljava/lang/String;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->TARGETS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 50
    if-ltz v0, :cond_f

    sget-object v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->CHANNELS:[[I

    aget-object v0, v1, v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_e
.end method

.method public isMuscle()Z
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Cmd;->channels()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
