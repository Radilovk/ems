.class public final Lcom/isaigu/gymapp/ai/AiModel$Screening;
.super Ljava/lang/Object;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Screening"
.end annotation


# instance fields
.field public alcoholOrStress48h:Z

.field public ateLast2h:Z

.field public final contraindications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public feverOrIllness:Z

.field public hrLoweringMedication:Z

.field public hydrated:Z

.field public knownArrhythmia:Z

.field public restedLast10min:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    .line 47
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    .line 48
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    .line 51
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    return-void
.end method
