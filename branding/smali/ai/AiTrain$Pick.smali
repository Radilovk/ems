.class final Lcom/isaigu/gymapp/ai/AiTrain$Pick;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field final which:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Pick;->which:I

    .line 1183
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1187
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 1188
    iget v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Pick;->which:I

    packed-switch v3, :pswitch_data_80

    .line 1211
    :pswitch_b
    if-nez p1, :cond_7d

    .line 1212
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->clearHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 1213
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    .line 1219
    :goto_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->changed()V

    .line 1220
    return-void

    .line 1190
    :pswitch_16
    if-nez p1, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1a
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_12

    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_1a

    .line 1193
    :pswitch_20
    invoke-static {v2, p1}, Lcom/isaigu/gymapp/ai/AiCoach;->experience(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)V

    goto :goto_12

    .line 1196
    :pswitch_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 1197
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1198
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v1, :cond_5a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_4b
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1200
    :cond_4d
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_12

    .line 1198
    :cond_5a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_4b

    .line 1203
    :pswitch_5d
    if-ne p1, v0, :cond_65

    :goto_5f
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    .line 1204
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    goto :goto_12

    :cond_65
    move v0, v1

    .line 1203
    goto :goto_5f

    .line 1207
    :pswitch_67
    if-nez p1, :cond_7a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_6b
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1208
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_12

    .line 1207
    :cond_7a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_6b

    .line 1215
    :cond_7d
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    goto :goto_12

    .line 1188
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_16
        :pswitch_20
        :pswitch_24
        :pswitch_67
        :pswitch_b
        :pswitch_5d
    .end packed-switch
.end method
