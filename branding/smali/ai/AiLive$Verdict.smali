.class final Lcom/isaigu/gymapp/ai/AiLive$Verdict;
.super Ljava/lang/Object;
.source "AiLive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Verdict"
.end annotation


# instance fields
.field final ask:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

.field final now:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

.field final said:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->now:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    .line 313
    new-instance v0, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->ask:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiLive$Verdict;->said:Ljava/lang/StringBuilder;

    return-void
.end method
