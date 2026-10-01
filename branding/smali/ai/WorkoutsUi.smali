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

.field static final A_CLOSE:I = 0xd

.field static final A_COPY:I = 0x7

.field static final A_DELETE:I = 0x6

.field static final A_DELETE_SURE:I = 0x12

.field static final A_KIND:I = 0x1b

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

.field private static confirmDelete:Z

.field private static dirty:Z

.field private static editing:Lcom/isaigu/gymapp/ai/Workout;

.field private static host:Landroid/app/Activity;

.field private static justPicked:Ljava/lang/String;

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
    .registers 3

    .prologue
    .line 78
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

    const/4 v1, 0x5

    const-string v2, "chest"

    aput-object v2, v0, v1

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

    .line 89
    const-string v0, "all"

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    .line 93
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    return-void
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
    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1179
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1180
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    packed-switch v0, :pswitch_data_2a4

    .line 1354
    :cond_12
    :goto_12
    :pswitch_12
    return-void

    .line 1182
    :pswitch_13
    if-ne p1, v1, :cond_22

    move v0, v1

    :goto_16
    sget-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-eq v0, v3, :cond_12

    .line 1183
    if-ne p1, v1, :cond_24

    :goto_1c
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    .line 1184
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    :cond_22
    move v0, v2

    .line 1182
    goto :goto_16

    :cond_24
    move v1, v2

    .line 1183
    goto :goto_1c

    .line 1189
    :pswitch_26
    new-instance v5, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 1190
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 1191
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v6, 0x19

    if-ne v0, v6, :cond_5e

    const-string v0, "passive"

    :goto_39
    iput-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 1192
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1193
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->clean()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_4a
    sput-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 1196
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1197
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 1198
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1199
    sput v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1200
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_61

    :goto_5a
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 1191
    :cond_5e
    const-string v0, "tone"

    goto :goto_39

    :cond_61
    move v1, v3

    .line 1200
    goto :goto_5a

    .line 1204
    :pswitch_63
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ownList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 1205
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 1206
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->deriveGoal(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1207
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1208
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 1209
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 1213
    :pswitch_84
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->presetAt(ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 1214
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1215
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 1218
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

    .line 1219
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1220
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1224
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

    .line 1225
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1227
    :cond_db
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1230
    :pswitch_e0
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1231
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1234
    :pswitch_e8
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 1235
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1238
    :pswitch_ef
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 1239
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 1240
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1243
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

    .line 1244
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1246
    :cond_11c
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    goto/16 :goto_12

    .line 1249
    :pswitch_121
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-nez v0, :cond_12c

    :goto_125
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    .line 1250
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    :cond_12c
    move v1, v2

    .line 1249
    goto :goto_125

    .line 1254
    :pswitch_12e
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_138

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v4

    .line 1255
    :cond_138
    if-ltz v4, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_12

    if-ne p1, v1, :cond_179

    move v3, v1

    :goto_147
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eq v3, v0, :cond_12

    .line 1256
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1257
    if-ne p1, v1, :cond_162

    move v2, v1

    :cond_162
    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    .line 1258
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 1259
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1260
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 1261
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 1262
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    .line 1263
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autosave(Landroid/content/Context;)V

    goto/16 :goto_12

    :cond_179
    move v3, v2

    .line 1255
    goto :goto_147

    .line 1268
    :pswitch_17b
    sput v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1269
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->lastPicked()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1270
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    .line 1271
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1274
    :pswitch_18a
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1275
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_19d

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    :goto_196
    sput v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1276
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    :cond_19d
    move v0, v4

    .line 1275
    goto :goto_196

    .line 1279
    :pswitch_19f
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v2

    .line 1280
    if-ltz v2, :cond_12

    .line 1281
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 1282
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1283
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1284
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1285
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1291
    :pswitch_1c2
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->insertAt()I

    move-result v2

    .line 1292
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v4, 0x13

    if-ne v0, v4, :cond_1e6

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    :goto_1d4
    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1293
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1294
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1295
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1296
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1292
    :cond_1e6
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->clean()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    goto :goto_1d4

    .line 1300
    :pswitch_1ed
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v0, v0, p1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 1301
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 1305
    :pswitch_1f8
    invoke-static {v5, p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->picked(Landroid/content/Context;Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;)V

    goto/16 :goto_12

    .line 1308
    :pswitch_1fd
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1309
    sput v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1310
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1311
    if-ltz v0, :cond_12

    .line 1312
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1313
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 1318
    :pswitch_210
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_21a

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v4

    .line 1319
    :cond_21a
    if-ltz v4, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_12

    .line 1322
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1323
    iget v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-static {v0, v2, p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->step(Lcom/isaigu/gymapp/ai/Workout$Block;II)V

    .line 1324
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    iget v3, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueOf(Lcom/isaigu/gymapp/ai/Workout$Block;I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueText(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1325
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1326
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 1327
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    goto/16 :goto_12

    .line 1331
    :pswitch_24e
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_265

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_265

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_265

    .line 1332
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1334
    :cond_265
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->useWorkout(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1335
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 1336
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    .line 1337
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V

    goto/16 :goto_12

    .line 1340
    :pswitch_274
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_28b

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_28b

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28b

    .line 1341
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1343
    :cond_28b
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    if-eqz v0, :cond_29e

    .line 1345
    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 1347
    :cond_29e
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    goto/16 :goto_12

    .line 1180
    nop

    :pswitch_data_2a4
    .packed-switch 0x1
        :pswitch_26
        :pswitch_63
        :pswitch_84
        :pswitch_e0
        :pswitch_24e
        :pswitch_e8
        :pswitch_90
        :pswitch_17b
        :pswitch_1f8
        :pswitch_1fd
        :pswitch_12
        :pswitch_c0
        :pswitch_fd
        :pswitch_12
        :pswitch_1ed
        :pswitch_12
        :pswitch_12
        :pswitch_ef
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_274
        :pswitch_18a
        :pswitch_19f
        :pswitch_210
        :pswitch_26
        :pswitch_121
        :pswitch_13
        :pswitch_12e
        :pswitch_1f8
    .end packed-switch
.end method

.method private static addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 460
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 461
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    invoke-direct {v1, p3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 463
    if-nez p4, :cond_25

    .line 464
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 466
    :cond_25
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    return-void
.end method

.method private static addSet(Ljava/lang/String;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1405
    if-eqz p1, :cond_46

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;

    move-object v2, v0

    :goto_6
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    :goto_f
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v3

    .line 1406
    const/4 v0, -0x1

    move v2, v0

    .line 1407
    :goto_15
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4e

    .line 1408
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_c0

    move v0, v1

    .line 1407
    :goto_42
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_15

    .line 1405
    :cond_46
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    :cond_4c
    move v0, v1

    goto :goto_f

    .line 1412
    :cond_4e
    if-ltz v2, :cond_75

    .line 1413
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1414
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->copy()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 1415
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->restAfter(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1416
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1423
    :goto_74
    return-void

    .line 1419
    :cond_75
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

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

    if-nez v0, :cond_b8

    .line 1420
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

    .line 1422
    :cond_b8
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_c0
    move v0, v2

    goto :goto_42
.end method

.method static autoName(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1470
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->derivedFocus()Ljava/util/List;

    move-result-object v1

    .line 1471
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1472
    :cond_11
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "d.MM"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1473
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

    .line 1474
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1480
    :cond_42
    :goto_42
    return-object v0

    .line 1473
    :cond_43
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v3, "Workout "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1476
    :cond_4c
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1477
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_42

    .line 1478
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
    .line 327
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_d

    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_e

    .line 337
    :cond_d
    :goto_d
    return-void

    .line 330
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

    .line 331
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 333
    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 334
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
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

.method static close()V
    .registers 1

    .prologue
    .line 1484
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 1486
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 1490
    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 1491
    return-void

    .line 1487
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private static countIn(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
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

    .line 953
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 954
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_27
    move v1, v0

    .line 956
    goto :goto_a

    .line 957
    :cond_29
    return v1

    :cond_2a
    move v0, v1

    goto :goto_27
.end method

.method static deriveGoal(Lcom/isaigu/gymapp/ai/Workout;)V
    .registers 2

    .prologue
    .line 315
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-eqz v0, :cond_7

    .line 323
    :cond_6
    :goto_6
    return-void

    .line 318
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v0

    if-eqz v0, :cond_6

    .line 321
    :cond_13
    const-string v0, "tone"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->suggestedGoal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    goto :goto_6
.end method

.method static fillGrid(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 900
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    .line 948
    :cond_b
    :goto_b
    return-void

    .line 903
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 904
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->filtered(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 905
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 906
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 908
    if-eqz v0, :cond_5e

    .line 909
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->pending(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_55

    .line 910
    const-string v0, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430 \u0441\u0435 \u0438\u0437\u0442\u0435\u0433\u043b\u044f\u0442 \u2014 \u0441\u043b\u0435\u0434 \u043c\u0430\u043b\u043a\u043e \u0441\u0430 \u0442\u0443\u043a."

    const-string v2, "The exercises are downloading \u2014 here in a moment."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    :goto_33
    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 908
    invoke-static {p0, v0, v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 914
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 915
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 916
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 911
    :cond_55
    const-string v0, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u2014 \u0430\u0434\u043c\u0438\u043d\u044a\u0442 \u0433\u0438 \u0438\u0437\u0431\u0438\u0440\u0430 \u043e\u0442 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430\u0442\u0430 \u201e\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u201c \u043d\u0430 \u0441\u044a\u0440\u0432\u044a\u0440\u0430."

    const-string v2, "No exercises switched on yet \u2014 the admin picks them on the server\'s Exercises page."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 913
    :cond_5e
    const-string v0, "\u041d\u0438\u0449\u043e \u043d\u0435 \u0441\u044a\u0432\u043f\u0430\u0434\u0430."

    const-string v2, "Nothing matches."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 920
    :cond_67
    const/4 v0, 0x0

    move v4, v1

    .line 921
    :goto_69
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_cb

    .line 922
    rem-int/lit8 v2, v4, 0x4

    if-nez v2, :cond_f1

    .line 923
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 925
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 926
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 927
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 928
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 929
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v4, :cond_c6

    move v0, v1

    :goto_8b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    :goto_92
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 932
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;

    move-result-object v6

    .line 933
    new-instance v7, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v3, :cond_c8

    const/16 v3, 0x9

    :goto_a4
    invoke-direct {v7, v3, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 934
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    iput-object v0, v7, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 935
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 937
    rem-int/lit8 v3, v4, 0x4

    if-lez v3, :cond_be

    .line 938
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 940
    :cond_be
    invoke-virtual {v2, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v0, v2

    goto :goto_69

    .line 929
    :cond_c6
    const/4 v0, 0x4

    goto :goto_8b

    .line 933
    :cond_c8
    const/16 v3, 0x1d

    goto :goto_a4

    .line 942
    :cond_cb
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v2, 0x4

    move v2, v1

    .line 943
    :goto_d6
    if-ge v2, v3, :cond_b

    if-eqz v0, :cond_b

    .line 944
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 945
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 946
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    :cond_f1
    move-object v2, v0

    goto :goto_92
.end method

.method static fillPanel(Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 557
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_d

    .line 675
    :cond_c
    :goto_c
    return-void

    .line 560
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 561
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v2

    .line 562
    if-ltz v2, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 565
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 566
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 567
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 568
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 569
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 571
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 572
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 573
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

    .line 574
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_363

    .line 575
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 576
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

    .line 577
    iget-object v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 578
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v8, 0x42e00000    # 112.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    :goto_94
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 590
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 591
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v8, v0, v1, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 592
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v0, :cond_3b9

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v0

    .line 593
    :goto_b1
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_3bc

    const-string v1, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v4, "Rest"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    :goto_bf
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 596
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 597
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

    .line 599
    if-nez v3, :cond_148

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_148

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v1

    if-nez v1, :cond_148

    .line 600
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_3da

    const-string v1, "\u0421\u043c\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v2, "Change exercise"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    :goto_114
    const/4 v2, 0x3

    .line 600
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 602
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v5, 0x16

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 605
    const-string v1, "\u0411\u0435\u0437"

    const-string v2, "None"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 606
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v5, 0x17

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    :cond_148
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_3e4

    .line 612
    const-string v1, "\u0411\u0435\u0437 \u0442\u043e\u043a. \u0414\u044a\u043b\u0436\u0438\u043d\u0430\u0442\u0430 \u0435 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0437\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430."

    const-string v2, "No current. Its length is the rest time."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    :goto_159
    const/high16 v2, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    .line 611
    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 618
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v1, v2, v4, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 619
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    if-nez v3, :cond_34b

    .line 623
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 624
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 625
    if-eqz v0, :cond_4ce

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v0

    if-eqz v0, :cond_4ce

    const/4 v0, 0x1

    .line 626
    :goto_18a
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_4d1

    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v2, "seconds"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_198
    iget v2, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    const/4 v3, 0x0

    .line 626
    invoke-static {p0, v1, v0, v2, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 628
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_1e2

    .line 629
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-eqz v0, :cond_4f7

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 \u25be"

    const-string v2, "Impulse \u25be"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b0
    const/4 v2, 0x3

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 631
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    :cond_1e2
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_34b

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-eqz v0, :cond_34b

    .line 638
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

    .line 639
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_501

    const/4 v0, 0x1

    :goto_20d
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 638
    invoke-static {p0, v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    .line 640
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 638
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_504

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 1"

    const-string v1, "Impulse 1"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22e
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    .line 642
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 641
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 644
    const-string v2, "Hz"

    const/4 v3, 0x0

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 645
    const-string v0, "\u0441\u0435\u043a"

    const-string v2, "s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    const/4 v5, 0x3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 646
    const-string v2, "\u00b5s"

    const/4 v3, 0x4

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 647
    const-string v0, "\u0441\u0438\u043b\u0430 %"

    const-string v2, "strength %"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    const/4 v5, 0x5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 648
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_50e

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 2 \u2014 \u0432\u043c\u0435\u0441\u0442\u043e \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v1, "Impulse 2 \u2014 in place of the pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_287
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->group(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    .line 650
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 649
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 652
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_518

    .line 653
    const-string v2, "Hz"

    const/4 v3, 0x0

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    const/4 v5, 0x6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 654
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

    .line 655
    const-string v0, "\u0441\u0438\u043b\u0430 % \u043e\u0442 1-\u0432\u0438"

    const-string v2, "strength % of 1st"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    const/4 v5, 0x7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 657
    const-string v0, "\u00b5s \u2014 \u043a\u0430\u0442\u043e \u0438\u043c\u043f\u0443\u043b\u0441 1"

    const-string v2, "\u00b5s \u2014 as impulse 1"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41300000    # 11.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 658
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 659
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    :goto_2ef
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
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

    .line 666
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 667
    const-string v0, "\u043d\u0430\u0447\u0430\u043b\u043e, \u0441\u0435\u043a"

    const-string v2, "start, s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    const/16 v5, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 668
    const-string v0, "\u043a\u0440\u0430\u0439, \u0441\u0435\u043a"

    const-string v2, "end, s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    const/16 v5, 0x9

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 669
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    :cond_34b
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    .line 580
    :cond_363
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 581
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_3af

    const v0, -0xa5a095

    :goto_371
    const/high16 v5, 0x41200000    # 10.0f

    .line 582
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 581
    invoke-static {v0, v5, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x42dc0000    # 110.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_3b6

    const/high16 v0, 0x41600000    # 14.0f

    :goto_391
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v5, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 584
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 586
    const/high16 v0, 0x42e00000    # 112.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_94

    .line 581
    :cond_3af
    iget v0, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v0

    goto :goto_371

    .line 583
    :cond_3b6
    const/high16 v0, 0x428c0000    # 70.0f

    goto :goto_391

    .line 592
    :cond_3b9
    const/4 v0, 0x0

    goto/16 :goto_b1

    .line 594
    :cond_3bc
    if-eqz v0, :cond_3c4

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_bf

    :cond_3c4
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v1, :cond_3d0

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_bf

    :cond_3d0
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441 \u0431\u0435\u0437 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v4, "Impulse, no exercise"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_bf

    .line 601
    :cond_3da
    const-string v1, "\u0421\u043b\u043e\u0436\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v2, "Set an exercise"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_114

    .line 617
    :cond_3e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
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

    .line 614
    iget-boolean v1, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_4a6

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

    const-string v4, " Hz "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    :goto_45a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u0440\u0430\u043c\u043f\u0430 "

    const-string v4, " \u00b7 ramp "

    .line 616
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

    const-string v2, " \u0441\u0435\u043a \u00b7 \u0441\u0438\u043b\u0430 "

    const-string v4, " s \u00b7 strength "

    .line 617
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_159

    .line 615
    :cond_4a6
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

    goto :goto_45a

    .line 625
    :cond_4ce
    const/4 v0, 0x0

    goto/16 :goto_18a

    .line 626
    :cond_4d1
    if-eqz v0, :cond_4dd

    const-string v0, "\u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0438\u044f"

    const-string v2, "holds"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_198

    .line 627
    :cond_4dd
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_4ed

    const-string v0, "\u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v2, "repetitions"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_198

    :cond_4ed
    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v2, "impulses"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_198

    .line 629
    :cond_4f7
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 \u25b8"

    const-string v2, "Impulse \u25b8"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b0

    .line 639
    :cond_501
    const/4 v0, 0x0

    goto/16 :goto_20d

    .line 641
    :cond_504
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v1, "Impulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22e

    .line 650
    :cond_50e
    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v1, "Pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_287

    .line 661
    :cond_518
    const-string v0, "\u0441\u0435\u043a"

    const-string v2, "s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget v4, v6, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 662
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2ef
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

    .line 878
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 879
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 880
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

    .line 881
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

    .line 884
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

    .line 885
    const/4 v1, 0x1

    .line 886
    array-length v8, v5

    move v3, v2

    :goto_78
    if-ge v3, v8, :cond_89

    aget-object v9, v5, v3

    .line 887
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8f

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8f

    move v1, v2

    .line 892
    :cond_89
    if-eqz v1, :cond_1e

    .line 893
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 886
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 896
    :cond_92
    return-object v4
.end method

.method static focusLine(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
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

    .line 308
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

    .line 310
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

    .line 154
    sput p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    .line 155
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 157
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 158
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 159
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    .line 160
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 161
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 163
    if-nez p0, :cond_38

    .line 164
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenList(Landroid/content/Context;)V

    .line 171
    :goto_30
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 172
    return-void

    .line 165
    :cond_38
    const/4 v1, 0x1

    if-ne p0, v1, :cond_42

    .line 166
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenEdit(Landroid/content/Context;)V

    .line 167
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autosave(Landroid/content/Context;)V

    goto :goto_30

    .line 169
    :cond_42
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenPick(Landroid/content/Context;)V

    goto :goto_30
.end method

.method static goalColor(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 123
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 125
    :goto_a
    return v0

    .line 124
    :cond_b
    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, -0xc28401

    goto :goto_a

    .line 125
    :cond_17
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_a
.end method

.method static goalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Fat loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_10
    return-object v0

    .line 118
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

    .line 119
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

    .line 258
    const/4 v0, 0x0

    move v2, v3

    .line 259
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4f

    .line 260
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_6d

    .line 261
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 262
    if-nez v2, :cond_4c

    const/16 v0, 0x8

    :goto_1a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    :goto_21
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;

    move-result-object v0

    .line 265
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    add-int v5, p4, v2

    invoke-direct {v4, p3, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 267
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_45

    .line 268
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 270
    :cond_45
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_8

    .line 262
    :cond_4c
    const/16 v0, 0xc

    goto :goto_1a

    .line 272
    :cond_4f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v6, :cond_6c

    if-eqz v0, :cond_6c

    .line 273
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 274
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 275
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
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

    .line 679
    const/high16 v0, 0x41480000    # 12.5f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 680
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 681
    return-object v0
.end method

.method private static insertAt()I
    .registers 1

    .prologue
    .line 1174
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    .line 1175
    :goto_a
    if-ltz v0, :cond_11

    add-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    .line 1174
    :cond_f
    const/4 v0, -0x1

    goto :goto_a

    .line 1175
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
    .line 253
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
    .line 973
    const/4 v2, 0x0

    .line 974
    const/4 v1, 0x0

    .line 975
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

    .line 976
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v4, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->orderOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v1, :cond_34

    .line 977
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->orderOf(Ljava/lang/String;)I

    move-result v1

    .line 978
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    move v0, v1

    :goto_31
    move v1, v0

    .line 980
    goto :goto_a

    .line 981
    :cond_33
    return-object v2

    :cond_34
    move v0, v1

    goto :goto_31
.end method

.method private static legend(Landroid/content/Context;)Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v14, 0x41380000    # 11.5f

    const/high16 v13, 0x41200000    # 10.0f

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 475
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 476
    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 477
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 478
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 479
    new-array v4, v12, [I

    fill-array-data v4, :array_172

    .line 480
    new-array v5, v12, [Ljava/lang/String;

    const-string v0, "\u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v6, "drainage"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "\u043c\u0430\u0441\u0430\u0436"

    const-string v6, "massage"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    const/4 v0, 0x2

    const-string v6, "\u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    const-string v7, "endurance"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const-string v6, "\u0441\u0438\u043b\u0430"

    const-string v7, "strength"

    .line 481
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    const-string v6, "\u043c\u043e\u0449\u043d\u043e\u0441\u0442"

    const-string v7, "power"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 482
    new-array v6, v12, [Ljava/lang/String;

    const-string v0, "1\u20139"

    aput-object v0, v6, v1

    const-string v0, "10\u201329"

    aput-object v0, v6, v11

    const/4 v0, 0x2

    const-string v7, "30\u201359"

    aput-object v7, v6, v0

    const/4 v0, 0x3

    const-string v7, "60\u201399"

    aput-object v7, v6, v0

    const/4 v0, 0x4

    const-string v7, "100\u2013120"

    aput-object v7, v6, v0

    .line 483
    const-string v0, "\u0426\u0432\u044f\u0442 = \u0447\u0435\u0441\u0442\u043e\u0442\u0430:"

    const-string v7, "Colour = frequency:"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v14, v7, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v0, v1

    .line 484
    :goto_92
    array-length v7, v4

    if-ge v0, v7, :cond_fb

    .line 485
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 486
    aget v8, v4, v0

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 488
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 489
    invoke-virtual {v3, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Hz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v7, v14, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 492
    :cond_fb
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->scrollRow(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 494
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 495
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 496
    const-string v3, "\u0411\u043b\u043e\u043a:"

    const-string v4, "Block:"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v14, v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    const-string v3, "\u0447\u0435\u0441\u0442\u043e\u0442\u0430, Hz"

    const-string v4, "frequency, Hz"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 498
    const-string v1, "\u0432\u0440\u0435\u043c\u0435, \u0441\u0435\u043a"

    const-string v3, "time, s"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v11, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 499
    const/4 v1, 0x2

    const-string v3, "\u0438\u043c\u043f\u0443\u043b\u0441 : \u043f\u0430\u0443\u0437\u0430"

    const-string v4, "impulse : pause"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 500
    const/4 v1, 0x3

    const-string v3, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "double impulse"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 501
    const/4 v1, 0x4

    const-string v3, "\u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430, \u00b5s = \u0432\u0438\u0441\u043e\u0447\u0438\u043d\u0430"

    const-string v4, "depth, \u00b5s = height"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 502
    const-string v1, "\u0440\u0430\u043c\u043f\u0430 = \u043d\u0430\u043a\u043b\u043e\u043d\u0435\u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430"

    const-string v3, "ramp = sloped side"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v12, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legendItem(Landroid/content/Context;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 503
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->scrollRow(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    return-object v2

    .line 479
    :array_172
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

    .line 516
    const/high16 v0, 0x41380000    # 11.5f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, p3, v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 517
    new-instance v1, Lcom/isaigu/gymapp/ai/ImpulseGlyph;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v3, 0x3fb33333    # 1.4f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, p2, v2, v3}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;-><init>(IIF)V

    .line 518
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 519
    invoke-virtual {v1, v4, v4, v2, v2}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->setBounds(IIII)V

    .line 520
    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 521
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 522
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 523
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 525
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 526
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    return-void
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    .line 132
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->show(Landroid/app/Activity;)V

    .line 133
    return-void
.end method

.method private static orderOf(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 962
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 963
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

    .line 964
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 965
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 968
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
    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
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

    .line 226
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->isProcedure(Lcom/isaigu/gymapp/ai/Workout;)Z

    move-result v3

    sget-boolean v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-ne v3, v4, :cond_d

    .line 227
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 230
    :cond_25
    return-object v1
.end method

.method private static param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V
    .registers 11

    .prologue
    .line 685
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 686
    return-void
.end method

.method private static param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V
    .registers 14

    .prologue
    .line 690
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 691
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 692
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 693
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 694
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

    .line 695
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

    .line 696
    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x26

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 697
    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x26

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 698
    invoke-static {p5, p4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueText(II)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 699
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 700
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v6, 0x18

    invoke-direct {v5, v6, p5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 701
    iput-object v4, v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    .line 702
    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 703
    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 704
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 705
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 707
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 708
    const/high16 v1, 0x41300000    # 11.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 709
    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 710
    if-ltz p3, :cond_dc

    .line 711
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseGlyph;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const v4, 0x3fb33333    # 1.4f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, p3, v3, v4}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;-><init>(IIF)V

    .line 712
    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 713
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, v3}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->setBounds(IIII)V

    .line 714
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 715
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 716
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 718
    :cond_dc
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 719
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 720
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 721
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    return-void
.end method

.method private static pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;
    .registers 13

    .prologue
    .line 992
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v8

    .line 993
    if-lez v8, :cond_1ed

    const/4 v0, 0x1

    move v6, v0

    .line 994
    :goto_a
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_1f1

    const/4 v0, 0x1

    move v7, v0

    .line 995
    :goto_10
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 996
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 997
    if-eqz v6, :cond_20d

    .line 999
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1000
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1001
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v3, 0x38

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1002
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const v10, 0x3e0f5c29    # 0.14f

    .line 1003
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

    .line 1004
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 1005
    const/4 v1, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 1006
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
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

    .line 1008
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1009
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a2

    .line 1010
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOutlineSpotShadowColor(I)V

    .line 1011
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOutlineAmbientShadowColor(I)V

    .line 1013
    :cond_a2
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 1014
    const v0, 0x3f75c28f    # 0.96f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1015
    const v0, 0x3f75c28f    # 0.96f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1016
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

    .line 1026
    :goto_de
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1027
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

    .line 1028
    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 1029
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setGlow(Z)V

    .line 1030
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setStill(Z)V

    .line 1031
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1032
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42d00000    # 104.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    if-eqz v6, :cond_16a

    if-nez v7, :cond_16a

    .line 1035
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

    .line 1036
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1037
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1038
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1039
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1040
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41e00000    # 28.0f

    .line 1042
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/16 v5, 0x33

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1043
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1044
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1045
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    :cond_16a
    if-nez v7, :cond_18a

    .line 1049
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->setButton(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->sideLp(Landroid/content/Context;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->setButton(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->sideLp(Landroid/content/Context;I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1052
    :cond_18a
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1053
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1054
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1055
    const/4 v1, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1056
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1057
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

    .line 1058
    if-eqz v6, :cond_246

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 1057
    :goto_1e2
    invoke-static {p0, v1, v2, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1059
    invoke-static {v9}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1060
    return-object v9

    .line 993
    :cond_1ed
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_a

    .line 994
    :cond_1f1
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_10

    .line 1018
    :cond_1f5
    const v0, 0x3f83d70a    # 1.03f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1019
    const v0, 0x3f83d70a    # 1.03f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1020
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    goto/16 :goto_de

    .line 1023
    :cond_20d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1024
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

    .line 1057
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

    .line 1058
    :cond_246
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_1e2
.end method

.method private static picked(Landroid/content/Context;Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;)V
    .registers 8

    .prologue
    const/16 v5, 0x1d

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1364
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v0

    .line 1365
    sget v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v2, :cond_4e

    sget v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    iget v2, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-ltz v2, :cond_4e

    .line 1366
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1367
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 1368
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1369
    const/16 v1, 0x64

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 1370
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 1372
    :cond_3b
    sput-boolean v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1373
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1374
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1375
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1376
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1377
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 1401
    :goto_4d
    return-void

    .line 1380
    :cond_4e
    iget v2, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    if-ne v2, v5, :cond_88

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_88

    .line 1381
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->removeAll(Ljava/lang/String;)V

    .line 1382
    sput-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    .line 1396
    :goto_61
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_df

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    :goto_6b
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1397
    sput-boolean v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1398
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 1399
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1400
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4d

    .line 1383
    :cond_88
    iget v2, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    if-eq v2, v5, :cond_cb

    iget v2, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-gez v2, :cond_cb

    .line 1384
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_9b
    if-ltz v2, :cond_c4

    .line 1385
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 1386
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->removeSet(I)V

    .line 1390
    :cond_c4
    sput-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    goto :goto_61

    .line 1384
    :cond_c7
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_9b

    .line 1392
    :cond_cb
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addSet(Ljava/lang/String;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)V

    .line 1393
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_dd

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    :goto_da
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->justPicked:Ljava/lang/String;

    goto :goto_61

    :cond_dd
    move-object v0, v1

    goto :goto_da

    .line 1396
    :cond_df
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->lastPicked()Ljava/lang/String;

    move-result-object v0

    goto :goto_6b
.end method

.method private static presetAt(ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 5

    .prologue
    .line 1358
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->presetList()Ljava/util/List;

    move-result-object v0

    .line 1359
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

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
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

    .line 237
    array-length v4, v3

    move v1, v0

    :goto_18
    if-ge v1, v4, :cond_48

    aget-object v5, v3, v1

    .line 238
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

    .line 239
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->isProcedure(Lcom/isaigu/gymapp/ai/Workout;)Z

    move-result v7

    sget-boolean v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-ne v7, v8, :cond_24

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 240
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 237
    :cond_44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 244
    :cond_48
    return-object v2
.end method

.method private static previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1093
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v2

    .line 1094
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1095
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1096
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1097
    const v1, -0xedebe6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1098
    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 1099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v6, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1100
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1101
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1103
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1104
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v4, v0, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1105
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v5

    .line 1106
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

    .line 1107
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

    .line 1108
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1109
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1110
    if-eqz v2, :cond_ee

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howText()Ljava/lang/String;

    move-result-object v0

    :goto_bf
    const/high16 v1, 0x41580000    # 13.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1111
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1112
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1115
    return-object v3

    .line 1106
    :cond_e2
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    .line 1107
    :cond_e7
    const-string v0, " \u0441\u0435\u0440\u0438\u0438"

    move-object v1, v0

    goto :goto_95

    :cond_eb
    const-string v0, " sets"

    goto :goto_99

    .line 1110
    :cond_ee
    const-string v0, ""

    goto :goto_bf
.end method

.method static refreshFooter()V
    .registers 2

    .prologue
    .line 804
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_9

    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 809
    :cond_9
    :goto_9
    return-void

    .line 807
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autosave(Landroid/content/Context;)V

    .line 808
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    goto :goto_9
.end method

.method static refreshSummary()V
    .registers 5

    .prologue
    .line 530
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_9

    .line 553
    :cond_8
    :goto_8
    return-void

    .line 533
    :cond_9
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 535
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 536
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

    .line 545
    :goto_44
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->longerThanSession()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 546
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

    .line 548
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    :goto_6a
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 538
    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
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

    .line 540
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

    .line 542
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

    .line 543
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

    .line 542
    :cond_f0
    const-string v0, ""

    goto :goto_be

    .line 550
    :cond_f3
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6a
.end method

.method private static removeAll(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1436
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_40

    .line 1437
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

    .line 1438
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->removeSet(I)V

    .line 1439
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1436
    :goto_3d
    add-int/lit8 v1, v0, -0x1

    goto :goto_a

    .line 1442
    :cond_40
    return-void

    :cond_41
    move v0, v1

    goto :goto_3d
.end method

.method private static removeSet(I)V
    .registers 3

    .prologue
    .line 1427
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1428
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

    .line 1429
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v1, p0, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1433
    :cond_30
    :goto_30
    return-void

    .line 1430
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

    .line 1431
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_30
.end method

.method private static same(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 248
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
    .line 1460
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->deriveGoal(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1461
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 1462
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autoName(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 1464
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1465
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1466
    return-void
.end method

.method private static screenEdit(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/high16 v13, 0x40800000    # 4.0f

    const/high16 v12, 0x42580000    # 54.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    sget-object v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 343
    iget-boolean v7, v6, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 344
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    if-eqz v7, :cond_349

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    :goto_14
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v7, :cond_36f

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u043a\u043e\u043f\u0438\u0440\u0430\u0439 \u044f, \u0437\u0430 \u0434\u0430 \u044f \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u0448."

    const-string v4, "Ready map \u2014 copy it to change it."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 352
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 353
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 354
    if-nez v7, :cond_be

    .line 355
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 357
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_385

    const-string v0, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u041b\u0435\u043a \u0434\u0440\u0435\u043d\u0430\u0436\u201c"

    const-string v9, "Name, e.g. \u201cLight drainage\u201d"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_59
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 360
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 361
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 362
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 363
    const/16 v0, 0x4001

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 364
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 365
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

    .line 366
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

    .line 367
    new-instance v0, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;-><init>()V

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v0, v2, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_be
    const-string v0, ""

    const/high16 v4, 0x41580000    # 13.5f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v4, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 373
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    .line 377
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 379
    const v0, -0xedebe6

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v0, v8, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v4, v0, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 381
    new-instance v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 382
    sget-object v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-nez v7, :cond_38f

    move v0, v1

    :goto_112
    invoke-virtual {v8, v6, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 383
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;-><init>()V

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setListener(Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;)V

    .line 385
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 388
    sget-object v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x43960000    # 300.0f

    .line 389
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 388
    invoke-virtual {v0, v8, v9}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x43960000    # 300.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legend(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 394
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_392

    .line 395
    const-string v0, "\u041f\u0440\u0430\u0437\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u0441\u043b\u043e\u0436\u0438 \u043f\u044a\u0440\u0432\u0438\u044f \u0431\u043b\u043e\u043a."

    const-string v4, "An empty map \u2014 place the first block."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_175
    const/high16 v4, 0x41700000    # 15.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 394
    invoke-static {p0, v0, v4, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 398
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 399
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 400
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    :cond_192
    if-nez v7, :cond_1d5

    .line 404
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 405
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_1ab

    .line 406
    const-string v0, "+  \u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v8, "+  Exercise"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x8

    invoke-static {p0, v4, v0, v8, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 408
    :cond_1ab
    const-string v0, "+  \u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v8, "+  Rest"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x13

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_39c

    move v0, v1

    :goto_1bc
    invoke-static {p0, v4, v8, v9, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 409
    const-string v0, "+  \u041d\u043e\u0432 \u0431\u043b\u043e\u043a"

    const-string v8, "+  New block"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x14

    invoke-static {p0, v4, v0, v8, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 410
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :cond_1d5
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    .line 414
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    if-gez v0, :cond_1fd

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fd

    if-nez v7, :cond_1fd

    .line 416
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 418
    :cond_1fd
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 421
    const-string v0, "\u2039  \u041d\u0430\u0437\u0430\u0434"

    const-string v3, "\u2039  Back"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 422
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    if-nez v7, :cond_267

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_267

    .line 425
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_39f

    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439 \u0437\u0430\u0432\u0438\u043d\u0430\u0433\u0438"

    const-string v3, "Delete for good"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    :goto_23e
    const/4 v3, 0x3

    .line 425
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 427
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_3a9

    const/16 v0, 0x12

    :goto_250
    invoke-direct {v4, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    :cond_267
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    if-eqz v7, :cond_2a6

    .line 433
    const-string v0, "\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v3, "Copy and change"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 434
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
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

    .line 437
    :cond_2a6
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3ac

    move v0, v1

    .line 439
    :goto_2af
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v3

    if-eqz v3, :cond_3af

    const-string v3, "\u25b6  \u041f\u0443\u0441\u043d\u0438 \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v4, "\u25b6  Run the map"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    :goto_2bd
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v4

    if-eqz v4, :cond_3b9

    move v4, v2

    .line 439
    :goto_2c4
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 441
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v8, 0x15

    invoke-direct {v4, v8, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 443
    if-eqz v0, :cond_3bc

    move v0, v5

    :goto_2d8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 444
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_3c1

    const/high16 v0, 0x43820000    # 260.0f

    :goto_2e5
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 445
    if-eqz v7, :cond_3c5

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_2f8
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 446
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_348

    .line 448
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v0

    if-lez v0, :cond_3c8

    .line 449
    :goto_30d
    const-string v0, "\u25b6  AI"

    const-string v3, "\u25b6  AI"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 450
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 452
    if-eqz v1, :cond_3cb

    :goto_327
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 453
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 454
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 455
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    :cond_348
    return-void

    .line 344
    :cond_349
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_355

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    goto/16 :goto_14

    .line 345
    :cond_355
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_365

    const-string v0, "\u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v4, "New procedure"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :cond_365
    const-string v0, "\u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v4, "New workout"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 347
    :cond_36f
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37b

    const-string v0, ""

    goto/16 :goto_25

    :cond_37b
    const-string v0, "\u0412\u043b\u0430\u0447\u0438 \u0440\u044a\u0431\u0430 \u043d\u0430 \u0431\u043b\u043e\u043a \u0437\u0430 \u0434\u044a\u043b\u0436\u0438\u043d\u0430 \u00b7 \u0437\u0430\u0434\u0440\u044a\u0436, \u0437\u0430 \u0434\u0430 \u0433\u043e \u043f\u0440\u0435\u043c\u0435\u0441\u0442\u0438\u0448"

    const-string v4, "Drag a block\'s edge for length \u00b7 hold it to move"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 359
    :cond_385
    const-string v0, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u201c"

    const-string v9, "Name, e.g. \u201cStrong glutes\u201d"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_59

    :cond_38f
    move v0, v2

    .line 382
    goto/16 :goto_112

    .line 396
    :cond_392
    const-string v0, "\u041f\u0440\u0430\u0437\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u0434\u043e\u0431\u0430\u0432\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435."

    const-string v4, "An empty map \u2014 add the first exercise."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_175

    :cond_39c
    move v0, v2

    .line 408
    goto/16 :goto_1bc

    .line 426
    :cond_39f
    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v3, "Delete"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23e

    .line 428
    :cond_3a9
    const/4 v0, 0x6

    goto/16 :goto_250

    :cond_3ac
    move v0, v2

    .line 437
    goto/16 :goto_2af

    .line 440
    :cond_3af
    const-string v3, "\u25b6  \u0410\u0432\u0442\u043e"

    const-string v4, "\u25b6  Auto"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2bd

    :cond_3b9
    const/4 v4, 0x2

    goto/16 :goto_2c4

    .line 443
    :cond_3bc
    const v0, 0x3f0ccccd    # 0.55f

    goto/16 :goto_2d8

    .line 444
    :cond_3c1
    const/high16 v0, 0x43520000    # 210.0f

    goto/16 :goto_2e5

    :cond_3c5
    move v0, v2

    .line 445
    goto/16 :goto_2f8

    :cond_3c8
    move v1, v2

    .line 448
    goto/16 :goto_30d

    .line 452
    :cond_3cb
    const v5, 0x3f0ccccd    # 0.55f

    goto/16 :goto_327
.end method

.method private static screenList(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/16 v5, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v3, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v4, "Programs"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v6, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 180
    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v4, "Workouts"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v4, "Procedures"

    .line 181
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-eqz v0, :cond_a4

    move v0, v1

    :goto_3c
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x1b

    invoke-direct {v4, v7, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 180
    invoke-static {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 181
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 180
    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legend(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ownList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 185
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    .line 186
    const-string v0, "\u0422\u0432\u043e\u0438\u0442\u0435"

    const-string v3, "Yours"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-static {p0, v6, v7, v8, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    .line 190
    :cond_79
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->presetList()Ljava/util/List;

    move-result-object v8

    move v3, v2

    .line 192
    :goto_7e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_f1

    .line 193
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    move v4, v3

    .line 195
    :goto_8d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_a6

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    :cond_a4
    move v0, v2

    .line 181
    goto :goto_3c

    .line 198
    :cond_a6
    const-string v0, "m"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u00b7 \u0437\u0430 \u043c\u044a\u0436\u0435"

    const-string v9, "Ready \u00b7 for men"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_b6
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ee

    if-nez v3, :cond_ee

    move v0, v5

    :goto_c3
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-interface {v8, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x3

    invoke-static {p0, v6, v0, v9, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    move v3, v4

    .line 203
    goto :goto_7e

    .line 199
    :cond_d4
    const-string v0, "f"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u00b7 \u0437\u0430 \u0436\u0435\u043d\u0438"

    const-string v9, "Ready \u00b7 for women"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    :cond_e5
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438"

    const-string v9, "Ready"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 200
    :cond_ee
    const/16 v0, 0x16

    goto :goto_c3

    .line 205
    :cond_f1
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-nez v0, :cond_16a

    .line 206
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 207
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->pending(Landroid/content/Context;)I

    move-result v3

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0432 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0430: "

    const-string v7, "Exercises in the catalog: "

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 209
    if-lez v3, :cond_1b4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 \u043e\u0449\u0435 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u0441\u0435 \u0438\u0437\u0442\u0435\u0433\u043b\u044f\u0442"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " more downloading"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    .line 208
    invoke-static {p0, v0, v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 211
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 212
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    :cond_16a
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-eqz v0, :cond_1b7

    const-string v0, "+  \u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "+  New procedure"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_176
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 217
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->procedures:Z

    if-eqz v0, :cond_1c0

    const/16 v0, 0x19

    :goto_182
    invoke-direct {v4, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
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

    .line 220
    return-void

    .line 209
    :cond_1b4
    const-string v0, ""

    goto :goto_14e

    .line 216
    :cond_1b7
    const-string v0, "+  \u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "+  New workout"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_176

    :cond_1c0
    move v0, v1

    .line 217
    goto :goto_182
.end method

.method private static screenPick(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v9, 0x41300000    # 11.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 831
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_d4

    move v0, v1

    .line 832
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

    .line 834
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_e1

    const-string v3, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043d\u043e\u0432\u043e\u0442\u043e \u2014 \u0431\u043b\u043e\u043a\u044a\u0442 \u0437\u0430\u043f\u0430\u0437\u0432\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0441\u0438."

    const-string v5, "Tap the new one \u2014 the block keeps its impulse."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2c
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 840
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 841
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 842
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 843
    const-string v5, "\u0422\u044a\u0440\u0441\u0438: \u043a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u0440\u044a\u0431\u2026"

    const-string v6, "Search: squat, lunge, back\u2026"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 844
    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 845
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 846
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 847
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 848
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

    .line 849
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 850
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 851
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    new-array v5, v1, [Landroid/widget/LinearLayout;

    .line 854
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    move v3, v2

    .line 855
    :goto_a5
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_eb

    .line 856
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

    .line 857
    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v9, 0xf

    invoke-direct {v8, v9, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    aget-object v8, v5, v2

    invoke-static {p0, v8, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 855
    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    :cond_d4
    move v0, v2

    .line 831
    goto/16 :goto_d

    .line 833
    :cond_d7
    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v5, "Add exercises"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1b

    .line 835
    :cond_e1
    const-string v3, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0438\u0437\u0431\u0435\u0440\u0435\u0448 \u00b7 + / \u2212 \u0441\u0435\u0440\u0438\u0438 \u00b7 \u0434\u043e\u043a\u043e\u0441\u043d\u0438 \u0438\u0437\u0431\u0440\u0430\u043d\u0430\u0442\u0430, \u0437\u0430 \u0434\u0430 \u044f \u043c\u0430\u0445\u043d\u0435\u0448. \u041d\u043e\u043c\u0435\u0440\u044a\u0442 \u0435 \u0440\u0435\u0434\u044a\u0442 \u0432 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v5, "Tap to pick \u00b7 + / \u2212 sets \u00b7 tap a picked one to take it out. The number is its place in the program."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 860
    :cond_eb
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    if-eqz v3, :cond_111

    if-nez v0, :cond_111

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_111

    .line 863
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    :cond_111
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 866
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 867
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillGrid(Landroid/content/Context;)V

    .line 870
    if-eqz v0, :cond_16c

    const-string v0, "\u041d\u0430\u0437\u0430\u0434 \u043a\u044a\u043c \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v3, "Back to the map"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_134
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 872
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
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

    .line 875
    return-void

    .line 871
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
    .line 509
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 512
    return-object v0
.end method

.method private static setButton(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1071
    if-eqz p2, :cond_72

    const-string v0, "+"

    :goto_9
    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {p0, v0, v5, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 1072
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1073
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1074
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1075
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1076
    if-eqz p2, :cond_75

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v7, 0xe6

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    :goto_29
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1077
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const v7, 0x66ffffff

    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1078
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1079
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1080
    new-instance v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x9

    if-eqz p2, :cond_78

    move v0, v1

    :goto_4b
    invoke-direct {v6, v7, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 1081
    iput-object p1, v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 1082
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    if-nez p2, :cond_57

    if-eqz p3, :cond_58

    :cond_57
    move v1, v3

    .line 1084
    :cond_58
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1085
    if-eqz v1, :cond_7a

    move v0, v4

    :goto_5e
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1086
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1087
    if-eqz p2, :cond_7e

    const-string v0, "\u041e\u0449\u0435 \u0435\u0434\u043d\u0430 \u0441\u0435\u0440\u0438\u044f"

    const-string v1, "One more set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6e
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1088
    return-object v5

    .line 1071
    :cond_72
    const-string v0, "\u2212"

    goto :goto_9

    .line 1076
    :cond_75
    const/high16 v0, -0x4d000000

    goto :goto_29

    :cond_78
    move v0, v2

    .line 1080
    goto :goto_4b

    .line 1085
    :cond_7a
    const v0, 0x3eb33333    # 0.35f

    goto :goto_5e

    .line 1087
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
    .line 137
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 138
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 139
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->sync(Landroid/content/Context;Z)V

    .line 140
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 141
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_41

    .line 142
    :cond_1a
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 143
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 145
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 147
    :cond_41
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_46

    .line 151
    :goto_45
    return-void

    .line 148
    :catch_46
    move-exception v0

    .line 149
    const-string v1, "WorkoutsUi.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45
.end method

.method private static sideLp(Landroid/content/Context;I)Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    .prologue
    const/high16 v2, 0x42400000    # 48.0f

    .line 1064
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1065
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    or-int/lit8 v3, p1, 0x10

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1066
    return-object v0
.end method

.method static step(Lcom/isaigu/gymapp/ai/Workout$Block;II)V
    .registers 10

    .prologue
    const/16 v6, 0x14

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 734
    packed-switch p1, :pswitch_data_74

    .line 763
    :pswitch_9
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    mul-int/lit8 v1, p2, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 766
    :goto_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 767
    return-void

    .line 736
    :pswitch_14
    iget v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    iget v5, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    if-lez p2, :cond_22

    :goto_1a
    add-int/2addr v2, v5

    if-ge v2, v6, :cond_24

    :goto_1d
    mul-int/2addr v0, p2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    goto :goto_10

    :cond_22
    move v2, v3

    goto :goto_1a

    :cond_24
    move v0, v1

    goto :goto_1d

    .line 739
    :pswitch_26
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    mul-int/lit8 v1, p2, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    goto :goto_10

    .line 742
    :pswitch_2e
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    mul-int/lit8 v1, p2, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    goto :goto_10

    .line 745
    :pswitch_36
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    mul-int/lit8 v1, p2, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    goto :goto_10

    .line 748
    :pswitch_3e
    iget v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-eqz v3, :cond_4c

    :goto_46
    mul-int v0, p2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_10

    :cond_4c
    move v1, v0

    goto :goto_46

    .line 751
    :pswitch_4e
    iget v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iget v5, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    if-lez p2, :cond_5c

    :goto_54
    add-int/2addr v2, v5

    if-ge v2, v6, :cond_5e

    :goto_57
    mul-int/2addr v0, p2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_10

    :cond_5c
    move v2, v3

    goto :goto_54

    :cond_5e
    move v0, v1

    goto :goto_57

    .line 754
    :pswitch_60
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    mul-int/lit8 v1, p2, 0x19

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_10

    .line 757
    :pswitch_68
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    goto :goto_10

    .line 760
    :pswitch_6e
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    goto :goto_10

    .line 734
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_4e
        :pswitch_60
        :pswitch_68
        :pswitch_6e
        :pswitch_9
        :pswitch_14
        :pswitch_26
        :pswitch_2e
        :pswitch_36
    .end packed-switch
.end method

.method static valueOf(Lcom/isaigu/gymapp/ai/Workout$Block;I)I
    .registers 3

    .prologue
    .line 770
    packed-switch p1, :pswitch_data_2a

    .line 780
    :pswitch_3
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    :goto_5
    return v0

    .line 771
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_5

    .line 772
    :pswitch_9
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_5

    .line 773
    :pswitch_c
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_5

    .line 774
    :pswitch_f
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    goto :goto_5

    .line 775
    :pswitch_12
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->off2()I

    move-result v0

    goto :goto_5

    :cond_1b
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    goto :goto_5

    .line 776
    :pswitch_1e
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    goto :goto_5

    .line 777
    :pswitch_21
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    goto :goto_5

    .line 778
    :pswitch_24
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    goto :goto_5

    .line 779
    :pswitch_27
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    goto :goto_5

    .line 770
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
    .line 726
    const/16 v0, 0x8

    if-eq p0, v0, :cond_8

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1f

    .line 727
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

    .line 729
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

    .line 280
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 281
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 282
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 283
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    const/high16 v3, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 284
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 285
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 288
    const v2, -0xedebe6

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v2, p1, v6}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 291
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 294
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

    .line 297
    :goto_99
    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 298
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 301
    return-object v1

    .line 296
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
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

    .line 296
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
    .line 103
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041a\u043e\u0440\u0435\u043c"

    const-string v1, "Abs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_10
    return-object v0

    .line 104
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

    .line 105
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

    .line 106
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

    .line 107
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

    .line 108
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

    .line 109
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

    .line 110
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

    .line 111
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

    .line 112
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

    .line 113
    :cond_ac
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v1, "All"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method
