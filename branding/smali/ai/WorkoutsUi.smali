.class public final Lcom/isaigu/gymapp/ai/WorkoutsUi;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;
    }
.end annotation


# static fields
.field static final A_ADD_CLEAN:I = 0x14

.field static final A_ADD_EX:I = 0x8

.field static final A_ADD_REST:I = 0x13

.field static final A_ADVANCED:I = 0x1a

.field static final A_BACK:I = 0xc

.field static final A_CLASS_GOAL:I = 0x3c

.field static final A_CLASS_LEVEL:I = 0x3d

.field static final A_CLASS_SEX:I = 0x3e

.field static final A_CLOSE:I = 0xd

.field static final A_COPY:I = 0x7

.field static final A_DELETE:I = 0x6

.field static final A_DELETE_SURE:I = 0x12

.field static final A_KIND:I = 0x1b

.field static final A_LOCK:I = 0x2c

.field static final A_MODE:I = 0x1c

.field static final A_NEW:I = 0x1

.field static final A_NEW_PASSIVE:I = 0x19

.field static final A_NO_EX:I = 0x17

.field static final A_OPEN:I = 0x2

.field static final A_PARAM:I = 0x18

.field static final A_PICKED:I = 0x9

.field static final A_PICK_DONE:I = 0xa

.field static final A_PICK_TOGGLE:I = 0x1d

.field static final A_PRESET:I = 0x3

.field static final A_REPLACE:I = 0x16

.field static final A_SAVE:I = 0x4

.field static final A_START_AI:I = 0x5

.field static final A_START_MAP:I = 0x15

.field static final A_ZONE:I = 0xf

.field private static final BAND_TOP:[I

.field static final EDIT:I = 0x1

.field static final LIST:I = 0x0

.field static final PICK:I = 0x2

.field static final P_HZ:I = 0x1

.field static final P_HZ2:I = 0x6

.field static final P_OFF:I = 0x4

.field static final P_ON:I = 0x3

.field static final P_PW:I = 0x2

.field static final P_REL:I = 0x5

.field static final P_REPS:I = 0x0

.field static final P_RIN:I = 0x8

.field static final P_ROUT:I = 0x9

.field static final P_STR2:I = 0x7

.field static final ZONES:[Ljava/lang/String;

.field private static advanced:Z

.field private static classBox:Landroid/widget/LinearLayout;

.field private static confirmDelete:Z

.field private static dirty:Z

.field private static editing:Lcom/isaigu/gymapp/ai/Workout;

.field private static host:Landroid/app/Activity;

.field private static justPicked:Ljava/lang/String;

.field private static legendBox:Landroid/widget/LinearLayout;

.field private static mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

.field private static panel:Landroid/widget/LinearLayout;

.field private static pickGrid:Landroid/widget/LinearLayout;

.field private static preview:Ljava/lang/String;

.field private static procedures:Z

.field private static query:Ljava/lang/String;

.field private static replaceIndex:I

.field private static screen:I

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static summary:Landroid/widget/TextView;

.field private static zone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x5

    .line 83
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "all"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "glutes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "legs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "back"

    aput-object v2, v0, v1

    const-string v1, "chest"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "arms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "shoulders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "functional"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "stretch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    .line 94
    const-string v0, "all"

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    .line 98
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 553
    new-array v0, v3, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->BAND_TOP:[I

    return-void

    nop

    :array_54
    .array-data 4
        0x9
        0x1d
        0x3b
        0x63
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    return p0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/Workout;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    return-object p0
.end method

.method static act(Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;I)V
    .registers 10

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1347
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1348
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    packed-switch v0, :pswitch_data_37a

    .line 1571
    :cond_12
    :goto_12
    :pswitch_12
    return-void

    .line 1350
    :pswitch_13
    if-ne p1, v1, :cond_22

    move v0, v1

    :goto_16
    sget-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-eq v0, v3, :cond_12

    .line 1351
    if-ne p1, v1, :cond_24

    :goto_1c
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    .line 1352
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    :cond_22
    move v0, v2

    .line 1350
    goto :goto_16

    :cond_24
    move v1, v2

    .line 1351
    goto :goto_1c

    .line 1357
    :pswitch_26
    new-instance v6, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v6}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 1358
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 1359
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v7, 0x19

    if-ne v0, v7, :cond_5e

    const-string v0, "passive"

    :goto_39
    iput-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 1360
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1361
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->clean()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_4a
    sput-object v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 1364
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1365
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 1366
    sput-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1367
    sput v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1368
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_61

    :goto_5a
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 1359
    :cond_5e
    const-string v0, "tone"

    goto :goto_39

    :cond_61
    move v1, v3

    .line 1368
    goto :goto_5a

    .line 1372
    :pswitch_63
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ownList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 1373
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 1374
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->deriveGoal(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1375
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1376
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 1377
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 1381
    :pswitch_84
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->presetAt(ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 1382
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1383
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 1386
    :pswitch_90
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (\u043c\u043e\u044f)"

    const-string v5, " (mine)"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 1387
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1388
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1392
    :pswitch_c0
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    if-ne v0, v1, :cond_db

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_db

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_db

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_db

    .line 1393
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1395
    :cond_db
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1398
    :pswitch_e0
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1399
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1402
    :pswitch_e8
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 1403
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1406
    :pswitch_ef
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 1407
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 1408
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1411
    :pswitch_fd
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    if-eqz v0, :cond_11c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_11c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_11c

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_11c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 1412
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1414
    :cond_11c
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    goto/16 :goto_12

    .line 1417
    :pswitch_121
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    aget-object v0, v0, p1

    .line 1418
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->effectiveGoals()Ljava/util/Set;

    move-result-object v2

    .line 1419
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 1420
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-le v3, v1, :cond_13c

    .line 1421
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1426
    :cond_13c
    :goto_13c
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1427
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_147
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 1428
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_147

    .line 1424
    :cond_15f
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13c

    .line 1430
    :cond_163
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classChanged(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1434
    :pswitch_168
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iput p1, v0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    .line 1435
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classChanged(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1438
    :pswitch_171
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-ne p1, v1, :cond_17e

    const-string v0, "f"

    :goto_177
    iput-object v0, v2, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    .line 1439
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classChanged(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1438
    :cond_17e
    if-ne p1, v3, :cond_183

    const-string v0, "m"

    goto :goto_177

    :cond_183
    move-object v0, v4

    goto :goto_177

    .line 1442
    :pswitch_185
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-nez v0, :cond_190

    :goto_189
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    .line 1443
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    :cond_190
    move v1, v2

    .line 1442
    goto :goto_189

    .line 1447
    :pswitch_192
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_19c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v5

    .line 1448
    :cond_19c
    if-ltz v5, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_12

    .line 1449
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1450
    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    if-nez v3, :cond_1b7

    move v2, v1

    :cond_1b7
    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 1451
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1452
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 1453
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1458
    :pswitch_1c5
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_1cf

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v5

    .line 1459
    :cond_1cf
    if-ltz v5, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_12

    if-ne p1, v1, :cond_213

    move v3, v1

    :goto_1de
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eq v3, v0, :cond_12

    .line 1460
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1461
    if-ne p1, v1, :cond_1f9

    move v2, v1

    :cond_1f9
    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    .line 1462
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 1463
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1464
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 1465
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 1466
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    .line 1467
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshLegend()V

    .line 1468
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autosave(Landroid/content/Context;)V

    goto/16 :goto_12

    :cond_213
    move v3, v2

    .line 1459
    goto :goto_1de

    .line 1473
    :pswitch_215
    sput v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1474
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->lastPicked()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1475
    sput-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    .line 1476
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1479
    :pswitch_224
    sput-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1480
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_237

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    :goto_230
    sput v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1481
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    :cond_237
    move v0, v5

    .line 1480
    goto :goto_230

    .line 1484
    :pswitch_239
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v3

    .line 1485
    if-ltz v3, :cond_12

    .line 1486
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iput-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 1487
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iput-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 1488
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 1489
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1490
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1491
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1492
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1498
    :pswitch_274
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->insertAt()I

    move-result v2

    .line 1499
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v4, 0x13

    if-ne v0, v4, :cond_298

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    :goto_286
    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1500
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->tooLong(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29f

    .line 1501
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_12

    .line 1499
    :cond_298
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->clean()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    goto :goto_286

    .line 1504
    :cond_29f
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1505
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1506
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1507
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1511
    :pswitch_2ae
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v0, v0, p1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 1512
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1516
    :pswitch_2b9
    invoke-static {v6, p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->picked(Landroid/content/Context;Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;)V

    goto/16 :goto_12

    .line 1519
    :pswitch_2be
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1520
    sput v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1521
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1522
    if-ltz v0, :cond_12

    .line 1523
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1524
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1529
    :pswitch_2d1
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_2db

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v5

    .line 1530
    :cond_2db
    if-ltz v5, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_12

    .line 1533
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1534
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->copy()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 1535
    iget v3, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-static {v0, v3, p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->step(Lcom/isaigu/gymapp/ai/Workout$Block;II)V

    .line 1536
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->tooLong(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_304

    .line 1537
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1540
    :cond_304
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    iget v3, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueOf(Lcom/isaigu/gymapp/ai/Workout$Block;I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueText(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1542
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 1543
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    .line 1544
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshLegend()V

    goto/16 :goto_12

    .line 1548
    :pswitch_324
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_33b

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_33b

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33b

    .line 1549
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1551
    :cond_33b
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->useWorkout(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1552
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 1553
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    .line 1554
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V

    goto/16 :goto_12

    .line 1557
    :pswitch_34a
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_361

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_361

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_361

    .line 1558
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1560
    :cond_361
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    if-eqz v0, :cond_374

    .line 1562
    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 1564
    :cond_374
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    goto/16 :goto_12

    .line 1348
    nop

    :pswitch_data_37a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_63
        :pswitch_84
        :pswitch_e0
        :pswitch_324
        :pswitch_e8
        :pswitch_90
        :pswitch_215
        :pswitch_2b9
        :pswitch_2be
        :pswitch_12
        :pswitch_c0
        :pswitch_fd
        :pswitch_12
        :pswitch_2ae
        :pswitch_12
        :pswitch_12
        :pswitch_ef
        :pswitch_274
        :pswitch_274
        :pswitch_34a
        :pswitch_224
        :pswitch_239
        :pswitch_2d1
        :pswitch_26
        :pswitch_185
        :pswitch_13
        :pswitch_1c5
        :pswitch_2b9
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_192
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_121
        :pswitch_168
        :pswitch_171
    .end packed-switch
.end method

.method private static addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 527
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 528
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    invoke-direct {v1, p3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 530
    if-nez p4, :cond_25

    .line 531
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 533
    :cond_25
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    return-void
.end method

.method private static addSet(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1639
    if-eqz p2, :cond_4a

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;

    move-object v2, v0

    :goto_6
    if-eqz p2, :cond_50

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    .line 1640
    :goto_f
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->zoneOf(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Ljava/lang/String;

    move-result-object v3

    .line 1639
    invoke-static {p1, v2, v0, v3}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v3

    .line 1641
    const/4 v0, -0x1

    move v2, v0

    .line 1642
    :goto_19
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 1643
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_c4

    move v0, v1

    .line 1642
    :goto_46
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_19

    .line 1639
    :cond_4a
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    :cond_50
    move v0, v1

    goto :goto_f

    .line 1647
    :cond_52
    if-ltz v2, :cond_79

    .line 1648
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1649
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->copy()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 1650
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->restAfter(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1651
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1658
    :goto_78
    return-void

    .line 1654
    :cond_79
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 1655
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->restAfter(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    :cond_bc
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_c4
    move v0, v2

    goto :goto_46
.end method

.method static autoName(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1705
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->derivedFocus()Ljava/util/List;

    move-result-object v1

    .line 1706
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1707
    :cond_11
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "d.MM"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430 "

    const-string v3, "Procedure "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1709
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1715
    :cond_42
    :goto_42
    return-object v0

    .line 1708
    :cond_43
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v3, "Workout "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1711
    :cond_4c
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_42

    .line 1713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0438 "

    const-string v3, " and "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42
.end method

.method static autosave(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 340
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_d

    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_e

    .line 350
    :cond_d
    :goto_d
    return-void

    .line 343
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_25

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 344
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 346
    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 347
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u2713 \u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e"

    const-string v2, "\u2713 Saved"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_d
.end method

.method private static band(I)I
    .registers 3

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 557
    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->BAND_TOP:[I

    aget v1, v1, v0

    if-le p0, v1, :cond_a

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 560
    :cond_a
    return v0
.end method

.method private static classChanged(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1335
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1336
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillClasses(Landroid/content/Context;)V

    .line 1337
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autosave(Landroid/content/Context;)V

    .line 1338
    return-void
.end method

.method private static classLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 521
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 522
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 523
    return-object v0
.end method

.method static close()V
    .registers 1

    .prologue
    .line 1719
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 1721
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 1725
    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 1726
    return-void

    .line 1722
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private static countIn(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 1113
    const/4 v0, 0x0

    .line 1114
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1115
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1116
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_27
    move v1, v0

    .line 1118
    goto :goto_a

    .line 1119
    :cond_29
    return v1

    :cond_2a
    move v0, v1

    goto :goto_27
.end method

.method static deriveGoal(Lcom/isaigu/gymapp/ai/Workout;)V
    .registers 2

    .prologue
    .line 328
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-eqz v0, :cond_7

    .line 336
    :cond_6
    :goto_6
    return-void

    .line 331
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    :cond_13
    const-string v0, "tone"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->suggestedGoal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    goto :goto_6
.end method

.method static fillClasses(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 485
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_d

    .line 518
    :cond_c
    :goto_c
    return-void

    .line 488
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 489
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 490
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->effectiveGoals()Ljava/util/Set;

    move-result-object v4

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v6

    .line 492
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 493
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 494
    const-string v0, "\u0426\u0435\u043b"

    const-string v8, "Goal"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v0, v1

    .line 495
    :goto_35
    array-length v8, v6

    if-ge v0, v8, :cond_5e

    .line 496
    aget-object v8, v6, v0

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v0

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    aget-object v10, v6, v0

    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoUi;->goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I

    move-result v10

    invoke-static {p0, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v8

    .line 497
    new-instance v9, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v10, 0x3c

    invoke-direct {v9, v10, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    invoke-static {p0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 500
    :cond_5e
    const-string v0, "\u0422\u0440\u0443\u0434\u043d\u043e\u0441\u0442"

    const-string v4, "Level"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v4, v2

    .line 501
    :goto_6e
    if-gt v4, v11, :cond_96

    .line 502
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->effectiveLevel()I

    move-result v0

    if-ne v0, v4, :cond_94

    move v0, v2

    :goto_7b
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoUi;->levelColor(I)I

    move-result v8

    invoke-static {p0, v6, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 503
    new-instance v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v8, 0x3d

    invoke-direct {v6, v8, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-static {p0, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 501
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6e

    :cond_94
    move v0, v1

    .line 502
    goto :goto_7b

    .line 506
    :cond_96
    const-string v0, "\u0417\u0430 \u043a\u043e\u0433\u043e"

    const-string v4, "For"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    new-array v6, v11, [Ljava/lang/String;

    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v4, "Everyone"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "\u0416\u0435\u043d\u0438"

    const-string v4, "Women"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "\u041c\u044a\u0436\u0435"

    const-string v4, "Men"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 508
    const-string v0, "f"

    iget-object v4, v5, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    move v0, v2

    :goto_d0
    move v3, v1

    .line 509
    :goto_d1
    array-length v4, v6

    if-ge v3, v4, :cond_ff

    .line 510
    aget-object v5, v6, v3

    if-ne v3, v0, :cond_fd

    move v4, v2

    :goto_d9
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {p0, v5, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v4

    .line 511
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v8, 0x3e

    invoke-direct {v5, v8, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-static {p0, v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 509
    add-int/lit8 v3, v3, 0x1

    goto :goto_d1

    .line 508
    :cond_ef
    const-string v0, "m"

    iget-object v4, v5, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    move v0, v3

    goto :goto_d0

    :cond_fb
    move v0, v1

    goto :goto_d0

    :cond_fd
    move v4, v1

    .line 510
    goto :goto_d9

    .line 514
    :cond_ff
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 516
    invoke-virtual {v0, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 517
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_c
.end method

.method static fillGrid(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1062
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    .line 1110
    :cond_b
    :goto_b
    return-void

    .line 1065
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1066
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->filtered(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 1067
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1068
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1070
    if-eqz v0, :cond_5e

    .line 1071
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->pending(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_55

    .line 1072
    const-string v0, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430 \u0441\u0435 \u0438\u0437\u0442\u0435\u0433\u043b\u044f\u0442 \u2014 \u0441\u043b\u0435\u0434 \u043c\u0430\u043b\u043a\u043e \u0441\u0430 \u0442\u0443\u043a."

    const-string v2, "The exercises are downloading \u2014 here in a moment."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :goto_33
    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 1070
    invoke-static {p0, v0, v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1076
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1077
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1078
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 1073
    :cond_55
    const-string v0, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u2014 \u0430\u0434\u043c\u0438\u043d\u044a\u0442 \u0433\u0438 \u0438\u0437\u0431\u0438\u0440\u0430 \u043e\u0442 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430\u0442\u0430 \u201e\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u201c \u043d\u0430 \u0441\u044a\u0440\u0432\u044a\u0440\u0430."

    const-string v2, "No exercises switched on yet \u2014 the admin picks them on the server\'s Exercises page."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 1075
    :cond_5e
    const-string v0, "\u041d\u0438\u0449\u043e \u043d\u0435 \u0441\u044a\u0432\u043f\u0430\u0434\u0430."

    const-string v2, "Nothing matches."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 1082
    :cond_67
    const/4 v0, 0x0

    move v4, v1

    .line 1083
    :goto_69
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_cb

    .line 1084
    rem-int/lit8 v2, v4, 0x4

    if-nez v2, :cond_f1

    .line 1085
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1087
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1088
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1089
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 1090
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 1091
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v4, :cond_c6

    move v0, v1

    :goto_8b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    :goto_92
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 1094
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;

    move-result-object v6

    .line 1095
    new-instance v7, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v3, :cond_c8

    const/16 v3, 0x9

    :goto_a4
    invoke-direct {v7, v3, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 1096
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    iput-object v0, v7, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 1097
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1099
    rem-int/lit8 v3, v4, 0x4

    if-lez v3, :cond_be

    .line 1100
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1102
    :cond_be
    invoke-virtual {v2, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v0, v2

    goto :goto_69

    .line 1091
    :cond_c6
    const/4 v0, 0x4

    goto :goto_8b

    .line 1095
    :cond_c8
    const/16 v3, 0x1d

    goto :goto_a4

    .line 1104
    :cond_cb
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v2, 0x4

    move v2, v1

    .line 1105
    :goto_d6
    if-ge v2, v3, :cond_b

    if-eqz v0, :cond_b

    .line 1106
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1107
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1108
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1105
    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    :cond_f1
    move-object v2, v0

    goto :goto_92
.end method

.method static fillPanel(Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 697
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_d

    .line 832
    :cond_c
    :goto_c
    return-void

    .line 700
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 701
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v2

    .line 702
    if-ltz v2, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 705
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 706
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 707
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 708
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 709
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 711
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 712
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 713
    const v0, -0xedebe6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 714
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_3ae

    .line 715
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 716
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    iget v9, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x1

    iget v10, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v0, v4, v5, v8, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 717
    iget-object v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 718
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v8, 0x42e00000    # 112.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    :goto_94
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 730
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 731
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v8, v0, v1, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 732
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v0, :cond_404

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v0

    .line 733
    :goto_b1
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_407

    const-string v1, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v4, "Rest"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    :goto_bf
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 736
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v9, 0x1

    invoke-static {p0, v1, v2, v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    if-nez v3, :cond_148

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_148

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v1

    if-nez v1, :cond_148

    .line 740
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_425

    const-string v1, "\u0421\u043c\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v2, "Change exercise"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 741
    :goto_114
    const/4 v2, 0x3

    .line 740
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 742
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v5, 0x16

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 744
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 745
    const-string v1, "\u0411\u0435\u0437"

    const-string v2, "None"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 746
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v5, 0x17

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 750
    :cond_148
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 751
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_42f

    .line 752
    const-string v1, "\u0411\u0435\u0437 \u0442\u043e\u043a. \u0414\u044a\u043b\u0436\u0438\u043d\u0430\u0442\u0430 \u0435 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0437\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430."

    const-string v2, "No current. Its length is the rest time."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    :goto_159
    const/high16 v2, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    .line 751
    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 758
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v1, v2, v4, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 759
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 761
    if-nez v3, :cond_396

    .line 763
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 764
    const/16 v1, 0x30

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 765
    if-eqz v0, :cond_501

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v0

    if-eqz v0, :cond_501

    const/4 v0, 0x1

    .line 766
    :goto_18a
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_504

    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v1, "seconds"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    :goto_198
    iget v1, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    const/4 v3, 0x0

    .line 766
    invoke-static {p0, v2, v0, v1, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 768
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_554

    .line 770
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-eqz v0, :cond_52a

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 \u25be"

    const-string v1, "Impulse \u25be"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b0
    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 772
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 774
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 775
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_541

    .line 778
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    if-eqz v0, :cond_534

    const-string v0, "\ud83d\udd12 \u0422\u043e\u0447\u043d\u043e \u043a\u0430\u043a\u0442\u043e \u0435"

    const-string v1, "\ud83d\udd12 Exactly as drawn"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    :goto_1ed
    iget-boolean v1, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    if-eqz v1, :cond_53e

    const/4 v1, 0x2

    .line 778
    :goto_1f2
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 780
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 782
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 783
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    :goto_22b
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 792
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_396

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-eqz v0, :cond_396

    .line 794
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 + \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "Impulse + pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v3, "Double impulse"

    .line 795
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_567

    const/4 v0, 0x1

    :goto_256
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 794
    invoke-static {p0, v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    .line 796
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 794
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_56a

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 1"

    const-string v1, "Impulse 1"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_277
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    .line 798
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 797
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 800
    const-string v2, "Hz"

    const/4 v3, 0x0

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 801
    const-string v0, "\u0441\u0435\u043a"

    const-string v2, "s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    const/4 v5, 0x3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 802
    const-string v2, "\u00b5s"

    const/4 v3, 0x4

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 804
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_574

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 2 \u2014 \u0432\u043c\u0435\u0441\u0442\u043e \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v1, "Impulse 2 \u2014 in place of the pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d1
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    .line 807
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 806
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 809
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_57e

    .line 810
    const-string v2, "Hz"

    const/4 v3, 0x0

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    const/4 v5, 0x6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 811
    const-string v0, "\u0441\u0435\u043a"

    const-string v2, "s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->off2()I

    move-result v4

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 813
    const-string v0, "\u00b5s \u2014 \u043a\u0430\u0442\u043e \u0438\u043c\u043f\u0443\u043b\u0441 1"

    const-string v2, "\u00b5s \u2014 as impulse 1"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41300000    # 11.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 814
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 815
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    :goto_33a
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    const-string v0, "\u0420\u0430\u043c\u043f\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v1, "Ramp of every impulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 824
    const-string v0, "\u043d\u0430\u0447\u0430\u043b\u043e, \u0441\u0435\u043a"

    const-string v2, "start, s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    const/16 v5, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 825
    const-string v0, "\u043a\u0440\u0430\u0439, \u0441\u0435\u043a"

    const-string v2, "end, s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    const/16 v5, 0x9

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 826
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    :cond_396
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    .line 720
    :cond_3ae
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 721
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_3fa

    const v0, -0xa5a095

    :goto_3bc
    const/high16 v5, 0x41200000    # 10.0f

    .line 722
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 721
    invoke-static {v0, v5, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x42dc0000    # 110.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_401

    const/high16 v0, 0x41600000    # 14.0f

    :goto_3dc
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v5, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 724
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 726
    const/high16 v0, 0x42e00000    # 112.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_94

    .line 721
    :cond_3fa
    iget v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v0

    goto :goto_3bc

    .line 723
    :cond_401
    const/high16 v0, 0x428c0000    # 70.0f

    goto :goto_3dc

    .line 732
    :cond_404
    const/4 v0, 0x0

    goto/16 :goto_b1

    .line 734
    :cond_407
    if-eqz v0, :cond_40f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_bf

    :cond_40f
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v1, :cond_41b

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_bf

    :cond_41b
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441 \u0431\u0435\u0437 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v4, "Impulse, no exercise"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_bf

    .line 741
    :cond_425
    const-string v1, "\u0421\u043b\u043e\u0436\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v2, "Set an exercise"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_114

    .line 757
    :cond_42f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0441\u0435\u043a \u00b7 "

    const-string v4, " s \u00b7 "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b5s \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 754
    iget-boolean v1, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_4d9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->off2()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u0441\u0435\u043a, 2-\u0440\u0438 "

    const-string v5, " s, 2nd "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Hz"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    :goto_499
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u0440\u0430\u043c\u043f\u0430 "

    const-string v4, " \u00b7 ramp "

    .line 756
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueText(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueText(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0441\u0435\u043a"

    const-string v4, " s"

    .line 757
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_159

    .line 755
    :cond_4d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u0441\u0435\u043a"

    const-string v5, " s"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_499

    .line 765
    :cond_501
    const/4 v0, 0x0

    goto/16 :goto_18a

    .line 766
    :cond_504
    if-eqz v0, :cond_510

    const-string v0, "\u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0438\u044f"

    const-string v1, "holds"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_198

    .line 767
    :cond_510
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_520

    const-string v0, "\u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v1, "repetitions"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_198

    :cond_520
    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v1, "impulses"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_198

    .line 770
    :cond_52a
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 \u25b8"

    const-string v1, "Impulse \u25b8"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b0

    .line 779
    :cond_534
    const-string v0, "\u2726 \u0423\u043c\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v1, "\u2726 Smart impulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1ed

    :cond_53e
    const/4 v1, 0x3

    goto/16 :goto_1f2

    .line 786
    :cond_541
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_22b

    .line 789
    :cond_554
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_22b

    .line 795
    :cond_567
    const/4 v0, 0x0

    goto/16 :goto_256

    .line 797
    :cond_56a
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v1, "Impulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_277

    .line 807
    :cond_574
    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v1, "Pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d1

    .line 818
    :cond_57e
    const-string v0, "\u0441\u0435\u043a"

    const-string v2, "s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 819
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_33a
.end method

.method private static filtered(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1040
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1042
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 1043
    const-string v1, "all"

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->zone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1046
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->bg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->en:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->tg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1047
    const/4 v1, 0x1

    .line 1048
    array-length v8, v5

    move v3, v2

    :goto_78
    if-ge v3, v8, :cond_89

    aget-object v9, v5, v3

    .line 1049
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8f

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8f

    move v1, v2

    .line 1054
    :cond_89
    if-eqz v1, :cond_1e

    .line 1055
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1048
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 1058
    :cond_92
    return-object v4
.end method

.method static focusLine(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->derivedFocus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, ""

    :goto_21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_2d
    const-string v1, " \u00b7 "

    goto :goto_21

    .line 323
    :cond_30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u2014  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_49
    return-object v0

    :cond_4a
    const-string v0, ""

    goto :goto_49
.end method

.method static go(I)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 161
    sput p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    .line 162
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 164
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 166
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendBox:Landroid/widget/LinearLayout;

    .line 167
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    .line 168
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 169
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 171
    if-nez p0, :cond_3a

    .line 172
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenList(Landroid/content/Context;)V

    .line 179
    :goto_32
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 180
    return-void

    .line 173
    :cond_3a
    const/4 v1, 0x1

    if-ne p0, v1, :cond_44

    .line 174
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenEdit(Landroid/content/Context;)V

    .line 175
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autosave(Landroid/content/Context;)V

    goto :goto_32

    .line 177
    :cond_44
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenPick(Landroid/content/Context;)V

    goto :goto_32
.end method

.method static goalColor(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 130
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 132
    :goto_a
    return v0

    .line 131
    :cond_b
    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, -0xc28401

    goto :goto_a

    .line 132
    :cond_17
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_a
.end method

.method static goalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Fat loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_10
    return-object v0

    .line 125
    :cond_11
    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v1, "Procedure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 126
    :cond_22
    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Toning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private static grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 271
    const/4 v0, 0x0

    move v2, v3

    .line 272
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4f

    .line 273
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_6d

    .line 274
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 275
    if-nez v2, :cond_4c

    const/16 v0, 0x8

    :goto_1a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    :goto_21
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;

    move-result-object v0

    .line 278
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    add-int v5, p4, v2

    invoke-direct {v4, p3, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 280
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_45

    .line 281
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 283
    :cond_45
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_8

    .line 275
    :cond_4c
    const/16 v0, 0xc

    goto :goto_1a

    .line 285
    :cond_4f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v6, :cond_6c

    if-eqz v0, :cond_6c

    .line 286
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 287
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 288
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_6c
    return-void

    :cond_6d
    move-object v1, v0

    goto :goto_21
.end method

.method private static group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 836
    const/high16 v0, 0x41480000    # 12.5f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 837
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 838
    return-object v0
.end method

.method private static insertAt()I
    .registers 1

    .prologue
    .line 1342
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    .line 1343
    :goto_a
    if-ltz v0, :cond_11

    add-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    .line 1342
    :cond_f
    const/4 v0, -0x1

    goto :goto_a

    .line 1343
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_e
.end method

.method static isProcedure(Lcom/isaigu/gymapp/ai/Workout;)Z
    .registers 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static lastPicked()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1135
    const/4 v2, 0x0

    .line 1136
    const/4 v1, 0x0

    .line 1137
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1138
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v4, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->orderOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v1, :cond_34

    .line 1139
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->orderOf(Ljava/lang/String;)I

    move-result v1

    .line 1140
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    move v0, v1

    :goto_31
    move v1, v0

    .line 1142
    goto :goto_a

    .line 1143
    :cond_33
    return-object v2

    :cond_34
    move v0, v1

    goto :goto_31
.end method

.method private static legend(Landroid/content/Context;Ljava/util/List;Z)Landroid/view/View;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 569
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->BAND_TOP:[I

    array-length v1, v1

    new-array v7, v1, [Z

    .line 570
    const/4 v6, 0x0

    .line 571
    const/4 v5, 0x0

    .line 572
    const/4 v4, 0x0

    .line 573
    const/4 v3, 0x0

    .line 574
    const/4 v1, 0x0

    .line 575
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v1

    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/Workout;

    .line 576
    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_21
    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 577
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v10

    if-eqz v10, :cond_35

    .line 578
    const/4 v5, 0x1

    .line 579
    goto :goto_21

    .line 581
    :cond_35
    const/4 v6, 0x1

    .line 582
    iget v10, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {v10}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->band(I)I

    move-result v10

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 583
    iget-boolean v10, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v10, :cond_4e

    .line 584
    const/4 v4, 0x1

    .line 588
    :goto_44
    iget v10, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    if-gtz v10, :cond_4c

    iget v1, v1, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    if-lez v1, :cond_21

    .line 589
    :cond_4c
    const/4 v2, 0x1

    goto :goto_21

    .line 586
    :cond_4e
    const/4 v3, 0x1

    goto :goto_44

    .line 593
    :cond_50
    if-nez v6, :cond_58

    if-eqz p2, :cond_56

    if-nez v5, :cond_58

    .line 594
    :cond_56
    const/4 v1, 0x0

    .line 644
    :goto_57
    return-object v1

    .line 596
    :cond_58
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 597
    const/high16 v1, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v8, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v1, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 598
    if-eqz v6, :cond_188

    .line 599
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 600
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 601
    const/4 v1, 0x5

    new-array v9, v1, [I

    fill-array-data v9, :array_224

    .line 602
    const/4 v1, 0x5

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v11, "\u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v12, "drainage"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v1, 0x1

    const-string v11, "\u043c\u0430\u0441\u0430\u0436"

    const-string v12, "massage"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v1, 0x2

    const-string v11, "\u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    const-string v12, "endurance"

    .line 603
    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v1, 0x3

    const-string v11, "\u0441\u0438\u043b\u0430"

    const-string v12, "strength"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v1, 0x4

    const-string v11, "\u043c\u043e\u0449\u043d\u043e\u0441\u0442"

    const-string v12, "power"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    .line 604
    const/4 v1, 0x5

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v12, "1\u20139"

    aput-object v12, v11, v1

    const/4 v1, 0x1

    const-string v12, "10\u201329"

    aput-object v12, v11, v1

    const/4 v1, 0x2

    const-string v12, "30\u201359"

    aput-object v12, v11, v1

    const/4 v1, 0x3

    const-string v12, "60\u201399"

    aput-object v12, v11, v1

    const/4 v1, 0x4

    const-string v12, "100\u2013120"

    aput-object v12, v11, v1

    .line 605
    const-string v1, "\u0426\u0432\u044f\u0442 = \u0447\u0435\u0441\u0442\u043e\u0442\u0430:"

    const-string v12, "Colour = frequency:"

    invoke-static {v1, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v12, 0x41380000    # 11.5f

    sget v13, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v12, v13, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    const/4 v1, 0x0

    :goto_fd
    array-length v12, v9

    if-ge v1, v12, :cond_17f

    .line 607
    aget-boolean v12, v7, v1

    if-nez v12, :cond_107

    .line 606
    :goto_104
    add-int/lit8 v1, v1, 0x1

    goto :goto_fd

    .line 610
    :cond_107
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 611
    aget v13, v9, v1

    invoke-static {v13}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v13

    const/high16 v14, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v14

    const/high16 v15, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 613
    const/high16 v14, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v14

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 614
    invoke-virtual {v8, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v11, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Hz"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x41380000    # 11.5f

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_104

    .line 617
    :cond_17f
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->scrollRow(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    :cond_188
    if-eqz p2, :cond_220

    .line 620
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 621
    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 622
    if-eqz v6, :cond_1a3

    .line 623
    const/4 v7, 0x0

    const/high16 v8, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 625
    :cond_1a3
    const-string v7, "\u0411\u043b\u043e\u043a:"

    const-string v8, "Block:"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41380000    # 11.5f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 626
    if-eqz v6, :cond_1c9

    .line 627
    const/4 v7, 0x0

    const-string v8, "\u0447\u0435\u0441\u0442\u043e\u0442\u0430, Hz"

    const-string v9, "frequency, Hz"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v1, v7, v8}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 629
    :cond_1c9
    const/4 v7, 0x1

    const-string v8, "\u0432\u0440\u0435\u043c\u0435, \u0441\u0435\u043a"

    const-string v9, "time, s"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v1, v7, v8}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 630
    if-eqz v3, :cond_1e7

    .line 631
    const/4 v3, 0x2

    const-string v7, "\u0438\u043c\u043f\u0443\u043b\u0441 : \u043f\u0430\u0443\u0437\u0430"

    const-string v8, "impulse : pause"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 633
    :cond_1e7
    if-eqz v4, :cond_1f7

    .line 634
    const/4 v3, 0x3

    const-string v4, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v7, "double impulse"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 636
    :cond_1f7
    if-eqz v6, :cond_207

    .line 637
    const/4 v3, 0x4

    const-string v4, "\u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430, \u00b5s = \u0432\u0438\u0441\u043e\u0447\u0438\u043d\u0430"

    const-string v6, "depth, \u00b5s = height"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 639
    :cond_207
    if-eqz v2, :cond_217

    .line 640
    const/4 v2, 0x5

    const-string v3, "\u0440\u0430\u043c\u043f\u0430 = \u043d\u0430\u043a\u043b\u043e\u043d\u0435\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430"

    const-string v4, "ramp = sloped side"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 642
    :cond_217
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->scrollRow(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_220
    move-object v1, v5

    .line 644
    goto/16 :goto_57

    .line 601
    nop

    :array_224
    .array-data 4
        0x5
        0x14
        0x2d
        0x55
        0x6e
    .end array-data
.end method

.method private static legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 12

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 656
    const/high16 v0, 0x41380000    # 11.5f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, p3, v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 657
    new-instance v1, Lcom/isaigu/gymapp/ai/ImpulseGlyph;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v3, 0x3fb33333    # 1.4f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, p2, v2, v3}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;-><init>(IIF)V

    .line 658
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 659
    invoke-virtual {v1, v4, v4, v2, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->setBounds(IIII)V

    .line 660
    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 661
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 662
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 663
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 665
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 666
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    return-void
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    .line 139
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->show(Landroid/app/Activity;)V

    .line 140
    return-void
.end method

.method private static orderOf(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 1124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1126
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1127
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1130
    :cond_31
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static ownList(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 239
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->isProcedure(Lcom/isaigu/gymapp/ai/Workout;)Z

    move-result v3

    sget-boolean v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-ne v3, v4, :cond_d

    .line 240
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 243
    :cond_25
    return-object v1
.end method

.method private static param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V
    .registers 11

    .prologue
    .line 842
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 843
    return-void
.end method

.method private static param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V
    .registers 14

    .prologue
    .line 847
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 848
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 849
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 850
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 851
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 852
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 853
    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x26

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 854
    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x26

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 855
    invoke-static {p5, p4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueText(II)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 856
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 857
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 858
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v6, 0x18

    invoke-direct {v5, v6, p5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 859
    iput-object v4, v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    .line 860
    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 861
    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 863
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 864
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 866
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    const/high16 v1, 0x41300000    # 11.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 869
    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 870
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 871
    if-ltz p3, :cond_e9

    .line 872
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseGlyph;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v4, 0x3fb33333    # 1.4f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, p3, v3, v4}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;-><init>(IIF)V

    .line 873
    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 874
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, v3}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->setBounds(IIII)V

    .line 875
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 876
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 877
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 879
    :cond_e9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 880
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 881
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 882
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    return-void
.end method

.method private static pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;
    .registers 13

    .prologue
    .line 1154
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v8

    .line 1155
    if-lez v8, :cond_1ed

    const/4 v0, 0x1

    move v6, v0

    .line 1156
    :goto_a
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_1f1

    const/4 v0, 0x1

    move v7, v0

    .line 1157
    :goto_10
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 1158
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 1159
    if-eqz v6, :cond_20d

    .line 1161
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1162
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1163
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v3, 0x38

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1164
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const v10, 0x3e0f5c29    # 0.14f

    .line 1165
    invoke-static {v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v4, v1, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1166
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 1167
    const/4 v1, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 1168
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1169
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1170
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a2

    .line 1172
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOutlineSpotShadowColor(I)V

    .line 1173
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOutlineAmbientShadowColor(I)V

    .line 1175
    :cond_a2
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 1176
    const v0, 0x3f75c28f    # 0.96f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1177
    const v0, 0x3f75c28f    # 0.96f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1178
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f83d70a    # 1.03f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f83d70a    # 1.03f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1188
    :goto_de
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1189
    const v1, -0xedebe6

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1190
    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 1191
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setGlow(Z)V

    .line 1192
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setStill(Z)V

    .line 1193
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1194
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42d00000    # 104.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    if-eqz v6, :cond_16a

    if-nez v7, :cond_16a

    .line 1197
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->orderOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1198
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1199
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1200
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1201
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41e00000    # 28.0f

    .line 1204
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/16 v5, 0x33

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1205
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1206
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1207
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
    :cond_16a
    if-nez v7, :cond_18a

    .line 1211
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->setButton(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->sideLp(Landroid/content/Context;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->setButton(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->sideLp(Landroid/content/Context;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    :cond_18a
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1215
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1216
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1217
    const/4 v1, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1218
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1219
    if-eqz v6, :cond_242

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x1

    if-ne v8, v0, :cond_23b

    const-string v0, " \u0441\u0435\u0440\u0438\u044f"

    move-object v1, v0

    :goto_1be
    const/4 v0, 0x1

    if-ne v8, v0, :cond_23f

    const-string v0, " set"

    :goto_1c3
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1dc
    const/high16 v2, 0x41380000    # 11.5f

    .line 1220
    if-eqz v6, :cond_246

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 1219
    :goto_1e2
    invoke-static {p0, v1, v2, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1221
    invoke-static {v9}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1222
    return-object v9

    .line 1155
    :cond_1ed
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_a

    .line 1156
    :cond_1f1
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_10

    .line 1180
    :cond_1f5
    const v0, 0x3f83d70a    # 1.03f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1181
    const v0, 0x3f83d70a    # 1.03f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1182
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    goto/16 :goto_de

    .line 1185
    :cond_20d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_de

    .line 1219
    :cond_23b
    const-string v0, " \u0441\u0435\u0440\u0438\u0438"

    move-object v1, v0

    goto :goto_1be

    :cond_23f
    const-string v0, " sets"

    goto :goto_1c3

    :cond_242
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1dc

    .line 1220
    :cond_246
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_1e2
.end method

.method private static picked(Landroid/content/Context;Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;)V
    .registers 8

    .prologue
    const/16 v5, 0x1d

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1581
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v3

    .line 1582
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_68

    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    sget-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_68

    iget v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-ltz v0, :cond_68

    .line 1583
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1584
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 1585
    if-eqz v3, :cond_5f

    iget-object v1, v3, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;

    :goto_32
    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 1586
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v1

    if-eqz v1, :cond_66

    move v1, v2

    :goto_3d
    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 1587
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1588
    const/16 v1, 0x64

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 1589
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 1591
    :cond_4c
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1592
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1593
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1594
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1595
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1596
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 1625
    :goto_5e
    return-void

    .line 1585
    :cond_5f
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 1586
    :cond_66
    const/4 v1, 0x0

    goto :goto_3d

    .line 1599
    :cond_68
    iget v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    if-ne v0, v5, :cond_a2

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a2

    .line 1600
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->removeAll(Ljava/lang/String;)V

    .line 1601
    sput-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    .line 1620
    :goto_7b
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_117

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    :goto_85
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1621
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1622
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 1623
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1624
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_5e

    .line 1602
    :cond_a2
    iget v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    if-eq v0, v5, :cond_e5

    iget v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-gez v0, :cond_e5

    .line 1603
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_b5
    if-ltz v3, :cond_de

    .line 1604
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1605
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->removeSet(I)V

    .line 1609
    :cond_de
    sput-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    goto :goto_7b

    .line 1603
    :cond_e1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_b5

    .line 1611
    :cond_e5
    new-instance v0, Ljava/util/ArrayList;

    sget-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1612
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addSet(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)V

    .line 1613
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->tooLong(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 1614
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1615
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1617
    :cond_107
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_115

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    :goto_111
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    goto/16 :goto_7b

    :cond_115
    move-object v0, v1

    goto :goto_111

    .line 1620
    :cond_117
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->lastPicked()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_85
.end method

.method private static presetAt(ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 5

    .prologue
    .line 1575
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->presetList()Ljava/util/List;

    move-result-object v0

    .line 1576
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method private static presetList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v3, v0

    const/4 v1, 0x1

    const-string v4, "f"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "m"

    aput-object v4, v3, v1

    .line 250
    array-length v4, v3

    move v1, v0

    :goto_18
    if-ge v1, v4, :cond_48

    aget-object v5, v3, v1

    .line 251
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 252
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->isProcedure(Lcom/isaigu/gymapp/ai/Workout;)Z

    move-result v7

    sget-boolean v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-ne v7, v8, :cond_24

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 253
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 250
    :cond_44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 257
    :cond_48
    return-object v2
.end method

.method private static previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1255
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v2

    .line 1256
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1257
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1258
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1259
    const v1, -0xedebe6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1260
    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 1261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v6, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1262
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1263
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1265
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1266
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v4, v0, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1267
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v5

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->orderOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_e2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    :goto_74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41980000    # 19.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v5, v8, :cond_e7

    const-string v0, " \u0441\u0435\u0440\u0438\u044f"

    move-object v1, v0

    :goto_95
    if-ne v5, v8, :cond_eb

    const-string v0, " set"

    :goto_99
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v1, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1270
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1271
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1272
    if-eqz v2, :cond_ee

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howText()Ljava/lang/String;

    move-result-object v0

    :goto_bf
    const/high16 v1, 0x41580000    # 13.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1273
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1274
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1275
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1277
    return-object v3

    .line 1268
    :cond_e2
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    .line 1269
    :cond_e7
    const-string v0, " \u0441\u0435\u0440\u0438\u0438"

    move-object v1, v0

    goto :goto_95

    :cond_eb
    const-string v0, " sets"

    goto :goto_99

    .line 1272
    :cond_ee
    const-string v0, ""

    goto :goto_bf
.end method

.method static refreshFooter()V
    .registers 2

    .prologue
    .line 966
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_9

    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 971
    :cond_9
    :goto_9
    return-void

    .line 969
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autosave(Landroid/content/Context;)V

    .line 970
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    goto :goto_9
.end method

.method static refreshLegend()V
    .registers 3

    .prologue
    .line 541
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_9

    .line 551
    :cond_8
    :goto_8
    return-void

    .line 544
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legend(Landroid/content/Context;Ljava/util/List;Z)Landroid/view/View;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_8

    .line 549
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8
.end method

.method static refreshSummary()V
    .registers 5

    .prologue
    .line 670
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_9

    .line 693
    :cond_8
    :goto_8
    return-void

    .line 673
    :cond_9
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 675
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0431\u043b\u043e\u043a\u0430 \u00b7 "

    const-string v3, " blocks \u00b7 "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->mapMinutes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_44
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->longerThanSession()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u00b7  \u043f\u043e-\u0434\u044a\u043b\u0433\u0430 \u043e\u0442 \u0435\u0434\u043d\u0430 AI \u0441\u0435\u0441\u0438\u044f \u2014 \u0449\u0435 \u043c\u0438\u043d\u0430\u0442 \u0441\u0435\u0440\u0438\u0438\u0442\u0435, \u043a\u043e\u0438\u0442\u043e \u0441\u0435 \u043f\u043e\u0431\u0435\u0440\u0430\u0442"

    const-string v2, "  \u00b7  longer than one AI session \u2014 the sets that fit are done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 692
    :goto_6a
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 678
    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->derivedFocus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 680
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9d

    const-string v1, ""

    :goto_91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    :cond_9d
    const-string v1, " \u00b7 "

    goto :goto_91

    .line 682
    :cond_a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  \u2014  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_be
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441\u0435\u0440\u0438\u0438 \u00b7 \u2248 "

    const-string v3, " sets \u00b7 \u2248 "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 683
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->aiMinutes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 682
    :cond_f0
    const-string v0, ""

    goto :goto_be

    .line 690
    :cond_f3
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6a
.end method

.method private static removeAll(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1671
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_40

    .line 1672
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1673
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->removeSet(I)V

    .line 1674
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1671
    :goto_3d
    add-int/lit8 v1, v0, -0x1

    goto :goto_a

    .line 1677
    :cond_40
    return-void

    :cond_41
    move v0, v1

    goto :goto_3d
.end method

.method private static removeSet(I)V
    .registers 3

    .prologue
    .line 1662
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1663
    if-lez p0, :cond_31

    add-int/lit8 v0, p0, -0x1

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v1, p0, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1664
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v1, p0, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1668
    :cond_30
    :goto_30
    return-void

    .line 1665
    :cond_31
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_30

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1666
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_30
.end method

.method private static same(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 261
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private static save(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1695
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->deriveGoal(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1696
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 1697
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autoName(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 1699
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1700
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1701
    return-void
.end method

.method private static screenEdit(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v13, -0x2

    const/high16 v12, 0x42580000    # 54.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    sget-object v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 356
    iget-boolean v7, v6, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 357
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    if-eqz v7, :cond_357

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    :goto_13
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v7, :cond_37d

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u043a\u043e\u043f\u0438\u0440\u0430\u0439 \u044f, \u0437\u0430 \u0434\u0430 \u044f \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u0448."

    const-string v4, "Ready map \u2014 copy it to change it."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 365
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 366
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 367
    if-nez v7, :cond_39d

    .line 368
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 370
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_393

    const-string v0, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u041b\u0435\u043a \u0434\u0440\u0435\u043d\u0430\u0436\u201c"

    const-string v9, "Name, e.g. \u201cLight drainage\u201d"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_58
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 373
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 374
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 375
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 376
    const/16 v0, 0x4001

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 377
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 378
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v9, 0x41300000    # 11.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41300000    # 11.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 380
    new-instance v0, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;-><init>()V

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 381
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v13, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classBox:Landroid/widget/LinearLayout;

    .line 384
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillClasses(Landroid/content/Context;)V

    .line 385
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classBox:Landroid/widget/LinearLayout;

    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    :goto_cf
    const-string v0, ""

    const/high16 v4, 0x41580000    # 13.5f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v4, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 391
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    .line 395
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 396
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 397
    const v0, -0xedebe6

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v0, v8, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v4, v0, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 399
    new-instance v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 400
    sget-object v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-nez v7, :cond_3a2

    move v0, v1

    :goto_129
    invoke-virtual {v8, v6, v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;ZZ)V

    .line 401
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;-><init>()V

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setListener(Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;)V

    .line 403
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 406
    sget-object v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v9}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendBox:Landroid/widget/LinearLayout;

    .line 410
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendBox:Landroid/widget/LinearLayout;

    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshLegend()V

    .line 412
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 414
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_3a5

    .line 415
    const-string v0, "\u041f\u0440\u0430\u0437\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u0441\u043b\u043e\u0436\u0438 \u043f\u044a\u0440\u0432\u0438\u044f \u0431\u043b\u043e\u043a."

    const-string v4, "An empty map \u2014 place the first block."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_185
    const/high16 v4, 0x41700000    # 15.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 414
    invoke-static {p0, v0, v4, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 418
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 419
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 420
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    :cond_1a2
    if-nez v7, :cond_1e5

    .line 424
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 425
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_1bb

    .line 426
    const-string v0, "+  \u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v8, "+  Exercise"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x8

    invoke-static {p0, v4, v0, v8, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 428
    :cond_1bb
    const-string v0, "+  \u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v8, "+  Rest"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x13

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3af

    move v0, v1

    :goto_1cc
    invoke-static {p0, v4, v8, v9, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 429
    const-string v0, "+  \u041d\u043e\u0432 \u0431\u043b\u043e\u043a"

    const-string v8, "+  New block"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x14

    invoke-static {p0, v4, v0, v8, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 430
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :cond_1e5
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    .line 434
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    if-gez v0, :cond_20d

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20d

    if-nez v7, :cond_20d

    .line 436
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 438
    :cond_20d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 441
    const-string v0, "\u2039  \u041d\u0430\u0437\u0430\u0434"

    const-string v3, "\u2039  Back"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 442
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    if-nez v7, :cond_275

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_275

    .line 445
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_3b2

    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439 \u0437\u0430\u0432\u0438\u043d\u0430\u0433\u0438"

    const-string v3, "Delete for good"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_24d
    const/4 v3, 0x3

    .line 445
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 447
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_3bc

    const/16 v0, 0x12

    :goto_25f
    invoke-direct {v4, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    :cond_275
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    if-eqz v7, :cond_2b4

    .line 453
    const-string v0, "\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v3, "Copy and change"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 454
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x43660000    # 230.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    :cond_2b4
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3bf

    move v0, v1

    .line 459
    :goto_2bd
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v3

    if-eqz v3, :cond_3c2

    const-string v3, "\u25b6  \u041f\u0443\u0441\u043d\u0438 \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v4, "\u25b6  Run the map"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    :goto_2cb
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v4

    if-eqz v4, :cond_3cc

    move v4, v2

    .line 459
    :goto_2d2
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 461
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v8, 0x15

    invoke-direct {v4, v8, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 463
    if-eqz v0, :cond_3cf

    move v0, v5

    :goto_2e6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 464
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_3d4

    const/high16 v0, 0x43820000    # 260.0f

    :goto_2f3
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 465
    if-eqz v7, :cond_3d8

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_306
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 466
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_356

    .line 468
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v0

    if-lez v0, :cond_3db

    .line 469
    :goto_31b
    const-string v0, "\u25b6  AI"

    const-string v3, "\u25b6  AI"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 470
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 472
    if-eqz v1, :cond_3de

    :goto_335
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 473
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 474
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 475
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    :cond_356
    return-void

    .line 357
    :cond_357
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_363

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    goto/16 :goto_13

    .line 358
    :cond_363
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_373

    const-string v0, "\u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v4, "New procedure"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :cond_373
    const-string v0, "\u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v4, "New workout"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 360
    :cond_37d
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_389

    const-string v0, ""

    goto/16 :goto_24

    :cond_389
    const-string v0, "\u0420\u044a\u0431\u044a\u0442 \u2014 \u0434\u044a\u043b\u0436\u0438\u043d\u0430 \u00b7 \u0437\u0430\u0434\u0440\u044a\u0436 \u2014 \u043f\u0440\u0435\u043c\u0435\u0441\u0442\u0438"

    const-string v4, "Edge \u2014 length \u00b7 hold \u2014 move"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 372
    :cond_393
    const-string v0, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u201c"

    const-string v9, "Name, e.g. \u201cStrong glutes\u201d"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_58

    .line 387
    :cond_39d
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->classBox:Landroid/widget/LinearLayout;

    goto/16 :goto_cf

    :cond_3a2
    move v0, v2

    .line 400
    goto/16 :goto_129

    .line 416
    :cond_3a5
    const-string v0, "\u041f\u0440\u0430\u0437\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u0434\u043e\u0431\u0430\u0432\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435."

    const-string v4, "An empty map \u2014 add the first exercise."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_185

    :cond_3af
    move v0, v2

    .line 428
    goto/16 :goto_1cc

    .line 446
    :cond_3b2
    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v3, "Delete"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24d

    .line 448
    :cond_3bc
    const/4 v0, 0x6

    goto/16 :goto_25f

    :cond_3bf
    move v0, v2

    .line 457
    goto/16 :goto_2bd

    .line 460
    :cond_3c2
    const-string v3, "\u25b6  \u0410\u0432\u0442\u043e"

    const-string v4, "\u25b6  Auto"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2cb

    :cond_3cc
    const/4 v4, 0x2

    goto/16 :goto_2d2

    .line 463
    :cond_3cf
    const v0, 0x3f0ccccd    # 0.55f

    goto/16 :goto_2e6

    .line 464
    :cond_3d4
    const/high16 v0, 0x43520000    # 210.0f

    goto/16 :goto_2f3

    :cond_3d8
    move v0, v2

    .line 465
    goto/16 :goto_306

    :cond_3db
    move v1, v2

    .line 468
    goto/16 :goto_31b

    .line 472
    :cond_3de
    const v5, 0x3f0ccccd    # 0.55f

    goto/16 :goto_335
.end method

.method private static screenList(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/16 v5, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v3, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v4, "Programs"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v6, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 188
    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v4, "Workouts"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v4, "Procedures"

    .line 189
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-eqz v0, :cond_ae

    move v0, v1

    :goto_3c
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x1b

    invoke-direct {v4, v7, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 188
    invoke-static {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 189
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 188
    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ownList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->presetList()Ljava/util/List;

    move-result-object v8

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legend(Landroid/content/Context;Ljava/util/List;Z)Landroid/view/View;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_6b

    .line 196
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :cond_6b
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 200
    const-string v0, "\u0422\u0432\u043e\u0438\u0442\u0435"

    const-string v3, "Yours"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-static {p0, v6, v7, v9, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    :cond_87
    move v3, v2

    .line 205
    :goto_88
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_fb

    .line 206
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    move v4, v3

    .line 208
    :goto_97
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_b0

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 209
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    :cond_ae
    move v0, v2

    .line 189
    goto :goto_3c

    .line 211
    :cond_b0
    const-string v0, "m"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u00b7 \u0437\u0430 \u043c\u044a\u0436\u0435"

    const-string v9, "Ready \u00b7 for men"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_c0
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f8

    if-nez v3, :cond_f8

    move v0, v5

    :goto_cd
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-interface {v8, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x3

    invoke-static {p0, v6, v0, v9, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    move v3, v4

    .line 216
    goto :goto_88

    .line 212
    :cond_de
    const-string v0, "f"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u00b7 \u0437\u0430 \u0436\u0435\u043d\u0438"

    const-string v9, "Ready \u00b7 for women"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c0

    :cond_ef
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438"

    const-string v9, "Ready"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c0

    .line 213
    :cond_f8
    const/16 v0, 0x16

    goto :goto_cd

    .line 218
    :cond_fb
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-nez v0, :cond_149

    .line 219
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->pending(Landroid/content/Context;)I

    move-result v0

    .line 220
    if-lez v0, :cond_149

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0418\u0437\u0442\u0435\u0433\u043b\u044f\u0442 \u0441\u0435 \u043e\u0449\u0435 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " more exercises downloading"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 223
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    :cond_149
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-eqz v0, :cond_193

    const-string v0, "+  \u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "+  New procedure"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_155
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 230
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-eqz v0, :cond_19c

    const/16 v0, 0x19

    :goto_161
    invoke-direct {v4, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    return-void

    .line 229
    :cond_193
    const-string v0, "+  \u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "+  New workout"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_155

    :cond_19c
    move v0, v1

    .line 230
    goto :goto_161
.end method

.method private static screenPick(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v9, 0x41300000    # 11.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 993
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_d4

    move v0, v1

    .line 994
    :goto_d
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_d7

    const-string v3, "\u0421\u043c\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v5, "Change the exercise"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_e1

    const-string v3, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043d\u043e\u0432\u043e\u0442\u043e \u2014 \u0431\u043b\u043e\u043a\u044a\u0442 \u0437\u0430\u043f\u0430\u0437\u0432\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0441\u0438."

    const-string v5, "Tap the new one \u2014 the block keeps its impulse."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2c
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1000
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 1002
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1003
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1004
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    const-string v5, "\u0422\u044a\u0440\u0441\u0438: \u043a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u0440\u044a\u0431\u2026"

    const-string v6, "Search: squat, lunge, back\u2026"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1006
    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1007
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1008
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1009
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1010
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1012
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1013
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    new-array v5, v1, [Landroid/widget/LinearLayout;

    .line 1016
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    move v3, v2

    .line 1017
    :goto_a5
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_eb

    .line 1018
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v8, v8, v3

    sget-object v9, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 1019
    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v9, 0xf

    invoke-direct {v8, v9, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    aget-object v8, v5, v2

    invoke-static {p0, v8, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 1017
    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    :cond_d4
    move v0, v2

    .line 993
    goto/16 :goto_d

    .line 995
    :cond_d7
    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v5, "Add exercises"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1b

    .line 997
    :cond_e1
    const-string v3, "+ / \u2212 \u0441\u0435\u0440\u0438\u0438 \u00b7 \u043d\u043e\u043c\u0435\u0440\u044a\u0442 \u0435 \u0440\u0435\u0434\u044a\u0442 \u0432 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v5, "+ / \u2212 sets \u00b7 the number is the order in the program"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 1022
    :cond_eb
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    if-eqz v3, :cond_111

    if-nez v0, :cond_111

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_111

    .line 1025
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    :cond_111
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 1028
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 1029
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillGrid(Landroid/content/Context;)V

    .line 1032
    if-eqz v0, :cond_16c

    const-string v0, "\u041d\u0430\u0437\u0430\u0434 \u043a\u044a\u043c \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v3, "Back to the map"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_134
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1034
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    return-void

    .line 1033
    :cond_16c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u043e \u00b7 "

    const-string v4, "Done \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0441\u0435\u0440\u0438\u0438"

    const-string v4, " sets"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_134
.end method

.method private static scrollRow(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 4

    .prologue
    .line 649
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 650
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 651
    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 652
    return-object v0
.end method

.method private static setButton(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1233
    if-eqz p2, :cond_72

    const-string v0, "+"

    :goto_9
    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {p0, v0, v5, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 1234
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1235
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1236
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1237
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1238
    if-eqz p2, :cond_75

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v7, 0xe6

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    :goto_29
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1239
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const v7, 0x66ffffff

    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1240
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1241
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1242
    new-instance v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x9

    if-eqz p2, :cond_78

    move v0, v1

    :goto_4b
    invoke-direct {v6, v7, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 1243
    iput-object p1, v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 1244
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    if-nez p2, :cond_57

    if-eqz p3, :cond_58

    :cond_57
    move v1, v3

    .line 1246
    :cond_58
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1247
    if-eqz v1, :cond_7a

    move v0, v4

    :goto_5e
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1248
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1249
    if-eqz p2, :cond_7e

    const-string v0, "\u041e\u0449\u0435 \u0435\u0434\u043d\u0430 \u0441\u0435\u0440\u0438\u044f"

    const-string v1, "One more set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6e
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1250
    return-object v5

    .line 1233
    :cond_72
    const-string v0, "\u2212"

    goto :goto_9

    .line 1238
    :cond_75
    const/high16 v0, -0x4d000000

    goto :goto_29

    :cond_78
    move v0, v2

    .line 1242
    goto :goto_4b

    .line 1247
    :cond_7a
    const v0, 0x3eb33333    # 0.35f

    goto :goto_5e

    .line 1249
    :cond_7e
    const-string v0, "\u0415\u0434\u043d\u0430 \u0441\u0435\u0440\u0438\u044f \u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    const-string v1, "One set less"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6e
.end method

.method private static show(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 145
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->sync(Landroid/content/Context;Z)V

    .line 147
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 148
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_41

    .line 149
    :cond_1a
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 150
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 152
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 154
    :cond_41
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_46

    .line 158
    :goto_45
    return-void

    .line 155
    :catch_46
    move-exception v0

    .line 156
    const-string v1, "WorkoutsUi.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45
.end method

.method private static sideLp(Landroid/content/Context;I)Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    .prologue
    const/high16 v2, 0x42400000    # 48.0f

    .line 1226
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1227
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    or-int/lit8 v3, p1, 0x10

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1228
    return-object v0
.end method

.method static step(Lcom/isaigu/gymapp/ai/Workout$Block;II)V
    .registers 8

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 895
    packed-switch p1, :pswitch_data_68

    .line 924
    :pswitch_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    mul-int/lit8 v1, p2, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 927
    :goto_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 928
    return-void

    .line 897
    :pswitch_10
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    goto :goto_c

    .line 900
    :pswitch_16
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    mul-int/lit8 v1, p2, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    goto :goto_c

    .line 903
    :pswitch_1e
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    mul-int/lit8 v1, p2, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    goto :goto_c

    .line 906
    :pswitch_26
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    mul-int/lit8 v1, p2, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    goto :goto_c

    .line 909
    :pswitch_2e
    iget v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-eqz v3, :cond_3b

    :goto_36
    mul-int/2addr v0, p2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_c

    :cond_3b
    move v0, v1

    goto :goto_36

    .line 912
    :pswitch_3d
    iget v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    if-lez p2, :cond_4f

    const/4 v2, 0x0

    :goto_44
    add-int/2addr v2, v4

    const/16 v4, 0x14

    if-ge v2, v4, :cond_51

    :goto_49
    mul-int v0, p2, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_c

    :cond_4f
    const/4 v2, -0x1

    goto :goto_44

    :cond_51
    move v1, v0

    goto :goto_49

    .line 915
    :pswitch_53
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    mul-int/lit8 v1, p2, 0x19

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_c

    .line 918
    :pswitch_5b
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    goto :goto_c

    .line 921
    :pswitch_61
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    goto :goto_c

    .line 895
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_3d
        :pswitch_53
        :pswitch_5b
        :pswitch_61
        :pswitch_5
        :pswitch_10
        :pswitch_16
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method

.method private static tooLong(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1629
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v1

    const/16 v2, 0x5dc

    if-gt v1, v2, :cond_10

    .line 1634
    :cond_f
    :goto_f
    return v0

    .line 1632
    :cond_10
    const-string v1, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 25 \u043c\u0438\u043d \u0441 \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u2014 \u0442\u043e\u0432\u0430 \u0435 \u0442\u0430\u0432\u0430\u043d\u044a\u0442."

    const-string v2, "The program reaches 25 min with its rests \u2014 that is the ceiling."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1633
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1634
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static valueOf(Lcom/isaigu/gymapp/ai/Workout$Block;I)I
    .registers 3

    .prologue
    .line 931
    packed-switch p1, :pswitch_data_2a

    .line 941
    :pswitch_3
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    :goto_5
    return v0

    .line 932
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_5

    .line 933
    :pswitch_9
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_5

    .line 934
    :pswitch_c
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_5

    .line 935
    :pswitch_f
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    goto :goto_5

    .line 936
    :pswitch_12
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->off2()I

    move-result v0

    goto :goto_5

    :cond_1b
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    goto :goto_5

    .line 937
    :pswitch_1e
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    goto :goto_5

    .line 938
    :pswitch_21
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    goto :goto_5

    .line 939
    :pswitch_24
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    goto :goto_5

    .line 940
    :pswitch_27
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    goto :goto_5

    .line 931
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_3
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method static valueText(II)Ljava/lang/String;
    .registers 8

    .prologue
    .line 887
    const/16 v0, 0x8

    if-eq p0, v0, :cond_8

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1f

    .line 888
    :cond_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 890
    :goto_1e
    return-object v0

    :cond_1f
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method private static workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 293
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 294
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 295
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 296
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    const/high16 v3, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 297
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 298
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 301
    const v2, -0xedebe6

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v2, p1, v6}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 304
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0431\u043b\u043e\u043a\u0430 \u00b7 "

    const-string v3, " blocks \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->mapMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_99
    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 311
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 312
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 314
    return-object v1

    .line 309
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->focusLine(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->distinctExercises()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0443\u043f\u0440. \u00b7 "

    const-string v3, " ex. \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0441\u0435\u0440\u0438\u0438 \u00b7 \u2248 "

    const-string v3, " sets \u00b7 \u2248 "

    .line 309
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->aiMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_99
.end method

.method static zoneName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041a\u043e\u0440\u0435\u043c"

    const-string v1, "Abs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_10
    return-object v0

    .line 111
    :cond_11
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v1, "Glutes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 112
    :cond_22
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0411\u0435\u0434\u0440\u0430"

    const-string v1, "Legs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 113
    :cond_33
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0413\u0440\u044a\u0431"

    const-string v1, "Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 114
    :cond_44
    const-string v0, "chest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0413\u044a\u0440\u0434\u0438"

    const-string v1, "Chest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 115
    :cond_55
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v1, "Arms"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 116
    :cond_66
    const-string v0, "shoulders"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u0420\u0430\u043c\u0435\u043d\u0435"

    const-string v1, "Shoulders"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 117
    :cond_77
    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u041a\u0430\u0440\u0434\u0438\u043e"

    const-string v1, "Cardio"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 118
    :cond_88
    const-string v0, "functional"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u0424\u0443\u043d\u043a\u0446\u0438\u043e\u043d\u0430\u043b\u043d\u0438"

    const-string v1, "Functional"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 119
    :cond_9a
    const-string v0, "stretch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "\u0420\u0430\u0437\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Stretching"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 120
    :cond_ac
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v1, "All"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method
