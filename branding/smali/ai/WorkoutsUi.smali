.class public final Lcom/isaigu/gymapp/ai/WorkoutsUi;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;
    }
.end annotation


# static fields
.field static final A_ADD:I = 0x8

.field static final A_BACK:I = 0xc

.field static final A_COPY:I = 0x7

.field static final A_DELETE:I = 0x6

.field static final A_DELETE_SURE:I = 0x12

.field static final A_FOCUS:I = 0xe

.field static final A_GOAL:I = 0xd

.field static final A_NEW:I = 0x1

.field static final A_OPEN:I = 0x2

.field static final A_PICKED:I = 0x9

.field static final A_PICK_DONE:I = 0xa

.field static final A_PRESET:I = 0x3

.field static final A_REMOVE:I = 0xb

.field static final A_REPS:I = 0x11

.field static final A_SAVE:I = 0x4

.field static final A_SETS:I = 0x10

.field static final A_START:I = 0x5

.field static final A_ZONE:I = 0xf

.field static final EDIT:I = 0x1

.field static final FOCUS:[Ljava/lang/String;

.field static final LIST:I = 0x0

.field static final PICK:I = 0x2

.field static final ZONES:[Ljava/lang/String;

.field private static confirmDelete:Z

.field private static dirty:Z

.field private static editing:Lcom/isaigu/gymapp/ai/Workout;

.field private static host:Landroid/app/Activity;

.field private static itemsBox:Landroid/widget/LinearLayout;

.field private static pickGrid:Landroid/widget/LinearLayout;

.field private static preview:Ljava/lang/String;

.field private static query:Ljava/lang/String;

.field private static saveBtn:Landroid/widget/TextView;

.field private static screen:I

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static summary:Landroid/widget/TextView;

.field private static zone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "all"

    aput-object v1, v0, v3

    const-string v1, "abs"

    aput-object v1, v0, v4

    const-string v1, "glutes"

    aput-object v1, v0, v5

    const-string v1, "legs"

    aput-object v1, v0, v6

    const-string v1, "back"

    aput-object v1, v0, v7

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

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "stretch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "abs"

    aput-object v1, v0, v3

    const-string v1, "glutes"

    aput-object v1, v0, v4

    const-string v1, "legs"

    aput-object v1, v0, v5

    const-string v1, "arms"

    aput-object v1, v0, v6

    const-string v1, "back"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "chest"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    .line 64
    const-string v0, "all"

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->itemsBox:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/ai/Workout;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    return p0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static act(Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;I)V
    .registers 9

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 759
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 760
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    packed-switch v0, :pswitch_data_220

    .line 886
    :goto_13
    return-void

    .line 762
    :pswitch_14
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 763
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 764
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 765
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 766
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 767
    sput-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 768
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_13

    .line 772
    :pswitch_2b
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 773
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 774
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 775
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_13

    .line 778
    :pswitch_5b
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 779
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 780
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_13

    .line 783
    :pswitch_6d
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual {v0, v1, v3}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    .line 784
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 785
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 786
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 790
    :pswitch_9d
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    if-ne v0, v2, :cond_b8

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_b8

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_b8

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 791
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 793
    :cond_b8
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 796
    :pswitch_bd
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 797
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 800
    :pswitch_c5
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 801
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 804
    :pswitch_cc
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 805
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 806
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 809
    :pswitch_da
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-ne p1, v2, :cond_e9

    const-string v0, "fat"

    :goto_e0
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 810
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 811
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 809
    :cond_e9
    const-string v0, "tone"

    goto :goto_e0

    .line 814
    :pswitch_ec
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 815
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_101

    .line 816
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_101
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 819
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 823
    :pswitch_108
    sput-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 824
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 827
    :pswitch_10f
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v0, v0, p1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 828
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 831
    :pswitch_11a
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-gez v0, :cond_173

    .line 832
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_129
    if-ltz v3, :cond_146

    .line 833
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 834
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 838
    :cond_146
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_171

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    :goto_150
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 845
    :goto_152
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 846
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 847
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 848
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 832
    :cond_16d
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_129

    :cond_171
    move-object v0, v1

    .line 838
    goto :goto_150

    .line 840
    :cond_173
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_198

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v0

    if-eqz v0, :cond_198

    move v0, v2

    .line 842
    :goto_182
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    if-eqz v0, :cond_19a

    const/4 v0, 0x5

    :goto_18d
    invoke-direct {v3, v5, v6, v0}, Lcom/isaigu/gymapp/ai/Workout$Item;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    goto :goto_152

    :cond_198
    move v0, v3

    .line 841
    goto :goto_182

    :cond_19a
    move v0, v4

    .line 842
    goto :goto_18d

    .line 851
    :pswitch_19c
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 854
    :pswitch_1a1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->row:Landroid/view/View;

    if-eqz v0, :cond_1ab

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 855
    :cond_1ab
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 856
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 857
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_13

    .line 862
    :pswitch_1b9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 863
    iget v1, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1e2

    .line 864
    iget v1, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    add-int/2addr v1, p1

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    .line 865
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    :goto_1db
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 871
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    goto/16 :goto_13

    .line 867
    :cond_1e2
    iget v1, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    add-int/2addr v1, p1

    const/4 v3, 0x3

    const/16 v4, 0x1e

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    .line 868
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1db

    .line 875
    :pswitch_1fa
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_211

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_211

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_211

    .line 876
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 878
    :cond_211
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->useWorkout(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 879
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 880
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    .line 881
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V

    goto/16 :goto_13

    .line 760
    :pswitch_data_220
    .packed-switch 0x1
        :pswitch_14
        :pswitch_2b
        :pswitch_5b
        :pswitch_bd
        :pswitch_1fa
        :pswitch_c5
        :pswitch_6d
        :pswitch_108
        :pswitch_11a
        :pswitch_19c
        :pswitch_1a1
        :pswitch_9d
        :pswitch_da
        :pswitch_ec
        :pswitch_10f
        :pswitch_1b9
        :pswitch_1b9
        :pswitch_cc
    .end packed-switch
.end method

.method static close()V
    .registers 1

    .prologue
    .line 913
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 915
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 919
    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 920
    return-void

    .line 916
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private static countIn(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 635
    const/4 v0, 0x0

    .line 636
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 637
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 638
    add-int/lit8 v0, v1, 0x1

    :goto_20
    move v1, v0

    .line 640
    goto :goto_a

    .line 641
    :cond_22
    return v1

    :cond_23
    move v0, v1

    goto :goto_20
.end method

.method static fillGrid(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 596
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    .line 632
    :cond_b
    :goto_b
    return-void

    .line 599
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 600
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->filtered(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 601
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 602
    const-string v0, "\u041d\u0438\u0449\u043e \u043d\u0435 \u0441\u044a\u0432\u043f\u0430\u0434\u0430."

    const-string v2, "Nothing matches."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 603
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 604
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 605
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 609
    :cond_45
    const/4 v0, 0x0

    move v3, v1

    .line 610
    :goto_47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_93

    .line 611
    rem-int/lit8 v2, v3, 0x4

    if-nez v2, :cond_b9

    .line 612
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 613
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v3, :cond_90

    move v0, v1

    :goto_5a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    :goto_61
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 616
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;

    move-result-object v5

    .line 617
    new-instance v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x9

    invoke-direct {v6, v7, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 618
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 619
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v0, v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 621
    rem-int/lit8 v6, v3, 0x4

    if-lez v6, :cond_89

    .line 622
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 624
    :cond_89
    invoke-virtual {v2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    add-int/lit8 v3, v3, 0x1

    move-object v0, v2

    goto :goto_47

    .line 613
    :cond_90
    const/16 v0, 0xa

    goto :goto_5a

    .line 626
    :cond_93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v2, 0x4

    move v2, v1

    .line 627
    :goto_9e
    if-ge v2, v3, :cond_b

    if-eqz v0, :cond_b

    .line 628
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 629
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 630
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_b9
    move-object v2, v0

    goto :goto_61
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

    .line 574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 575
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 576
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

    .line 577
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

    .line 580
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

    .line 581
    const/4 v1, 0x1

    .line 582
    array-length v8, v5

    move v3, v2

    :goto_78
    if-ge v3, v8, :cond_89

    aget-object v9, v5, v3

    .line 583
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8f

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8f

    move v1, v2

    .line 588
    :cond_89
    if-eqz v1, :cond_1e

    .line 589
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 582
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 592
    :cond_92
    return-object v4
.end method

.method static go(I)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    sput p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    .line 113
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 115
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 116
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->itemsBox:Landroid/widget/LinearLayout;

    .line 117
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    .line 118
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 119
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 120
    if-nez p0, :cond_39

    .line 121
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenList(Landroid/content/Context;)V

    .line 127
    :goto_27
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 128
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 129
    return-void

    .line 122
    :cond_39
    const/4 v1, 0x1

    if-ne p0, v1, :cond_40

    .line 123
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenEdit(Landroid/content/Context;)V

    goto :goto_27

    .line 125
    :cond_40
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenPick(Landroid/content/Context;)V

    goto :goto_27
.end method

.method static goalColor(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 90
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    :goto_a
    return v0

    :cond_b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_a
.end method

.method static goalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Fat loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Toning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private static grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 164
    const/4 v0, 0x0

    move v2, v3

    .line 165
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4d

    .line 166
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_6b

    .line 167
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 168
    if-nez v2, :cond_4a

    const/16 v0, 0x8

    :goto_1a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :goto_21
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;

    move-result-object v0

    .line 171
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    invoke-direct {v4, p3, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 173
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_43

    .line 174
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 176
    :cond_43
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_8

    .line 168
    :cond_4a
    const/16 v0, 0xc

    goto :goto_1a

    .line 178
    :cond_4d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v6, :cond_6a

    if-eqz v0, :cond_6a

    .line 179
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 180
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 181
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_6a
    return-void

    :cond_6b
    move-object v1, v0

    goto :goto_21
.end method

.method private static itemRow(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;IZ)Landroid/view/View;
    .registers 12

    .prologue
    .line 350
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 351
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v2

    .line 352
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 354
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 355
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 356
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 357
    if-nez p3, :cond_67

    .line 358
    const-string v1, "\u2261"

    const/high16 v4, 0x41d00000    # 26.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v6, 0x1

    invoke-static {p0, v1, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 359
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 360
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;

    invoke-direct {v4, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Drag;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 361
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    :cond_67
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 364
    const v4, -0xedebe6

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    new-instance v4, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 366
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setGlow(Z)V

    .line 367
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setStill(Z)V

    .line 368
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 369
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42b80000    # 92.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42880000    # 68.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 372
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 373
    if-eqz v2, :cond_14d

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v1

    :goto_c3
    const/high16 v5, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 374
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 375
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    if-eqz v2, :cond_155

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->zone:Ljava/lang/String;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u00b7 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v2, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_f4
    const/high16 v5, 0x41480000    # 12.5f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 377
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    if-eqz v2, :cond_158

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v1

    if-eqz v1, :cond_158

    const/4 v1, 0x1

    .line 380
    :goto_115
    if-eqz p3, :cond_163

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u00d7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_15a

    const-string v0, " \u0437\u0430\u0434\u044a\u0440\u0436."

    const-string v1, " holds"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41880000    # 17.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    .line 381
    invoke-static {p0, v0, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    :goto_14c
    return-object v3

    .line 373
    :cond_14d
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c3

    .line 376
    :cond_155
    const-string v1, ""

    goto :goto_f4

    .line 379
    :cond_158
    const/4 v1, 0x0

    goto :goto_115

    .line 382
    :cond_15a
    const-string v0, " \u043f\u043e\u0432\u0442."

    const-string v1, " reps"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_138

    .line 384
    :cond_163
    const-string v2, "\u0441\u0435\u0440\u0438\u0438"

    const-string v4, "sets"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-static {p0, v2, v4, v5, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mini(Landroid/content/Context;Ljava/lang/String;ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    if-eqz v1, :cond_1dd

    const-string v1, "\u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0438\u044f"

    const-string v2, "holds"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_186
    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-static {p0, v1, v0, v2, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mini(Landroid/content/Context;Ljava/lang/String;ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 387
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 389
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 390
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    const-string v0, "\u2715"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v4, 0x24

    invoke-static {p0, v0, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 392
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v2, 0xb

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 393
    iput-object v3, v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->row:Landroid/view/View;

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 396
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 397
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_14c

    .line 385
    :cond_1dd
    const-string v1, "\u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v2, "reps"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_186
.end method

.method private static mini(Landroid/content/Context;Ljava/lang/String;ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;Landroid/view/View;)Landroid/view/View;
    .registers 15

    .prologue
    const/16 v6, 0x26

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    .line 404
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 406
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 407
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 408
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

    .line 409
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 410
    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 411
    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 412
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41980000    # 19.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 413
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 414
    iput-object p4, p3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->row:Landroid/view/View;

    .line 415
    iput-object v4, p3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    .line 416
    const/4 v5, -0x1

    invoke-static {v2, p3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 417
    invoke-static {v3, p3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 418
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    const/high16 v1, 0x41300000    # 11.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, p1, v1, v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 423
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    return-object v0
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 98
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->sync(Landroid/content/Context;Z)V

    .line 100
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 101
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 102
    :cond_1a
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 103
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 105
    :cond_2d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    .line 109
    :goto_31
    return-void

    .line 106
    :catch_32
    move-exception v0

    .line 107
    const-string v1, "WorkoutsUi.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method private static pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/4 v9, 0x1

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x0

    .line 645
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v3

    .line 646
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 647
    if-lez v3, :cond_e3

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const v2, 0x3e23d70a    # 0.16f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_1f
    const/high16 v1, 0x41600000    # 14.0f

    .line 648
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v5, v1

    if-lez v3, :cond_e7

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    move v2, v1

    :goto_2b
    if-lez v3, :cond_ec

    const/high16 v1, 0x40000000    # 2.0f

    :goto_2f
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 647
    invoke-static {v0, v5, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 650
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 651
    const v0, -0xedebe6

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 653
    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setGlow(Z)V

    .line 654
    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setStill(Z)V

    .line 655
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 656
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    if-lez v3, :cond_b5

    .line 658
    if-le v3, v9, :cond_f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u00d7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_97
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 659
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x35

    invoke-direct {v2, v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 661
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 662
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 663
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    :cond_b5
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 667
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 668
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 669
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 670
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    const/high16 v1, 0x41380000    # 11.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 671
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 672
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 673
    return-object v4

    .line 647
    :cond_e3
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto/16 :goto_1f

    .line 648
    :cond_e7
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v2, v1

    goto/16 :goto_2b

    :cond_ec
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_2f

    .line 658
    :cond_f0
    const-string v0, "\u2713"

    goto :goto_97
.end method

.method private static previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 678
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v1

    .line 679
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 680
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 681
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 682
    const v3, -0xedebe6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    new-instance v3, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 684
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 685
    invoke-virtual {v3, p1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 686
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x432a0000    # 170.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x43000000    # 128.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 688
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 689
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v0, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 690
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    const/high16 v4, 0x41900000    # 18.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 691
    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howText()Ljava/lang/String;

    move-result-object v0

    :goto_6d
    const/high16 v1, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 692
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v7, v1, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 693
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 694
    const-string v0, "\u041c\u0430\u0445\u043d\u0438 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u043e\u0442\u043e"

    const-string v1, "Remove the last one"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 695
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 696
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 697
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    return-object v2

    .line 690
    :cond_ba
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 691
    :cond_bf
    const-string v0, ""

    goto :goto_6d
.end method

.method static refreshFooter()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 500
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v1, :cond_9

    sget v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    if-eq v1, v0, :cond_a

    .line 509
    :cond_9
    :goto_9
    return-void

    .line 503
    :cond_a
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_39

    .line 504
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v3, "Save"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    :goto_27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 506
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 508
    :cond_39
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    goto :goto_9

    .line 505
    :cond_3d
    const/4 v0, 0x0

    goto :goto_27

    .line 506
    :cond_3f
    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_36
.end method

.method static refreshSummary()V
    .registers 5

    .prologue
    .line 329
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_9

    .line 346
    :cond_8
    :goto_8
    return-void

    .line 332
    :cond_9
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u00b7 "

    const-string v3, " exercises \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->totalSets()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0441\u0435\u0440\u0438\u0438 \u0432 \u043a\u0440\u044a\u0433\u043e\u0432\u0435 \u00b7 \u2248 "

    const-string v3, " sets in rounds \u00b7 \u2248 "

    .line 334
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->minutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d \u0441 AI"

    const-string v3, " min with AI"

    .line 335
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->longerThanSession()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\u041f\u043e-\u0434\u044a\u043b\u0433\u0430 \u043e\u0442 \u0435\u0434\u043d\u0430 AI \u0441\u0435\u0441\u0438\u044f ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043c\u0438\u043d): \u0449\u0435 \u043c\u0438\u043d\u0430\u0442 \u043a\u0440\u044a\u0433\u043e\u0432\u0435\u0442\u0435, \u043a\u043e\u0438\u0442\u043e \u0441\u0435 \u043f\u043e\u0431\u0435\u0440\u0430\u0442 \u2014 \u0432\u0441\u044f\u043a\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435 \u043f\u043e\u043d\u0435 \u0432\u0435\u0434\u043d\u044a\u0436, \u0430\u043a\u043e \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u043a\u0440\u044a\u0433 \u0441\u0435 \u043f\u043e\u0431\u0438\u0440\u0430."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nLonger than one AI session ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 339
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->sessionMinutes()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " min): the rounds that fit are done \u2014 every exercise at least once if the first round fits."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    :goto_ae
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 343
    :cond_b5
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_ae
.end method

.method private static save(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 904
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3d

    .line 905
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d.MM"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 906
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v4, "Workout "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 908
    :cond_3d
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)V

    .line 909
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 910
    return-void
.end method

.method private static screenEdit(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v13, -0x2

    const/high16 v12, 0x42580000    # 54.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 225
    iget-boolean v6, v5, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 226
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    if-eqz v6, :cond_e7

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    :goto_13
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v6, :cond_fd

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u043a\u043e\u043f\u0438\u0440\u0430\u0439 \u044f, \u0437\u0430 \u0434\u0430 \u044f \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u0448."

    const-string v7, "Ready program \u2014 copy it to change it."

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 232
    if-nez v6, :cond_a5

    .line 233
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 235
    iget-object v7, v5, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const-string v7, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u201c"

    const-string v8, "Name, e.g. \u201cStrong glutes\u201d"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 237
    const/high16 v7, 0x41980000    # 19.0f

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 238
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 239
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 240
    const/16 v7, 0x4001

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 241
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 242
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 244
    new-instance v7, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;-><init>()V

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    const/4 v7, 0x4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :cond_a5
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 250
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 251
    if-eqz v6, :cond_107

    .line 252
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, v5, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    :goto_c3
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 259
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v8, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v0, v2

    .line 260
    :goto_d1
    sget-object v9, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_16d

    .line 261
    iget-object v9, v5, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    sget-object v10, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 262
    if-eqz v6, :cond_141

    if-nez v9, :cond_141

    .line 260
    :goto_e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 226
    :cond_e7
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f3

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    goto/16 :goto_13

    :cond_f3
    const-string v0, "\u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v7, "New workout"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 228
    :cond_fd
    const-string v0, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0434\u043e\u0431\u0430\u0432\u0438\u0448; \u0432\u043b\u0430\u0447\u0438 \u2261 \u0437\u0430 \u043f\u043e\u0434\u0440\u0435\u0434\u0431\u0430."

    const-string v7, "Tap exercises to add; drag \u2261 to reorder."

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 254
    :cond_107
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "tone"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    const-string v0, "fat"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    .line 255
    const-string v0, "fat"

    iget-object v9, v5, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    move v0, v1

    :goto_125
    new-instance v9, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v10, 0xd

    invoke-direct {v9, v10, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 254
    invoke-static {p0, v8, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 256
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x43a00000    # 320.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c3

    :cond_13f
    move v0, v2

    .line 255
    goto :goto_125

    .line 265
    :cond_141
    sget-object v10, Lcom/isaigu/gymapp/ai/WorkoutsUi;->FOCUS:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-static {v10}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v10, v9, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v9

    .line 266
    if-nez v6, :cond_15b

    .line 267
    new-instance v10, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v11, 0xe

    invoke-direct {v10, v11, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_15b
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 272
    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_e4

    .line 274
    :cond_16d
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const-string v0, ""

    const/high16 v7, 0x41580000    # 13.5f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 278
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    const/16 v7, 0xc

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    .line 281
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->itemsBox:Landroid/widget/LinearLayout;

    .line 282
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->itemsBox:Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v2

    .line 283
    :goto_1a4
    iget-object v7, v5, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1be

    .line 284
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->itemsBox:Landroid/widget/LinearLayout;

    invoke-static {p0, v5, v0, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->itemRow(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;IZ)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a4

    .line 286
    :cond_1be
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f3

    .line 287
    const-string v0, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u2014 \u0434\u043e\u0431\u0430\u0432\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e."

    const-string v7, "No exercises yet \u2014 add the first one."

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 289
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 290
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v0, v2, v7, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 291
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->itemsBox:Landroid/widget/LinearLayout;

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    :cond_1f3
    if-nez v6, :cond_227

    .line 294
    const-string v0, "+  \u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v7, "+  Add exercises"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {p0, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 295
    new-instance v7, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v8, 0x8

    invoke-direct {v7, v8, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 301
    :cond_227
    const-string v0, "\u2039  \u041d\u0430\u0437\u0430\u0434"

    const-string v3, "\u2039  Back"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 302
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0xc

    invoke-direct {v3, v7, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    if-nez v6, :cond_28c

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_28c

    .line 305
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_336

    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439 \u0437\u0430\u0432\u0438\u043d\u0430\u0433\u0438"

    const-string v3, "Delete for good"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_264
    const/4 v3, 0x3

    .line 305
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 307
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    new-instance v7, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_340

    const/16 v0, 0x12

    :goto_276
    invoke-direct {v7, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    :cond_28c
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    if-eqz v6, :cond_343

    const-string v0, "\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v3, "Copy and change"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_2a7
    const/4 v3, 0x2

    .line 312
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 314
    new-instance v7, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    if-eqz v6, :cond_35b

    const/4 v0, 0x7

    :goto_2b1
    invoke-direct {v7, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    if-eqz v6, :cond_35e

    const/4 v0, 0x0

    :goto_2ba
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    .line 316
    if-nez v6, :cond_2ca

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_361

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_361

    :cond_2ca
    move v0, v1

    :goto_2cb
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 317
    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_364

    move v0, v4

    :goto_2d5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 318
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x435c0000    # 220.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    const-string v0, "\u25b6  \u0421\u0442\u0430\u0440\u0442 \u0441 AI"

    const-string v3, "\u25b6  Start with AI"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 320
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/4 v6, 0x5

    invoke-direct {v3, v6, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v3, v5, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_369

    :goto_30b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 322
    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_36b

    :goto_314
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 323
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43700000    # 240.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 324
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 325
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    return-void

    .line 306
    :cond_336
    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v3, "Delete"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_264

    .line 308
    :cond_340
    const/4 v0, 0x6

    goto/16 :goto_276

    .line 313
    :cond_343
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_351

    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v3, "Save"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a7

    :cond_351
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u2713"

    const-string v3, "Saved \u2713"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a7

    .line 314
    :cond_35b
    const/4 v0, 0x4

    goto/16 :goto_2b1

    :cond_35e
    move-object v0, v3

    .line 315
    goto/16 :goto_2ba

    :cond_361
    move v0, v2

    .line 316
    goto/16 :goto_2cb

    .line 317
    :cond_364
    const v0, 0x3f0ccccd    # 0.55f

    goto/16 :goto_2d5

    :cond_369
    move v1, v2

    .line 321
    goto :goto_30b

    .line 322
    :cond_36b
    const v4, 0x3f0ccccd    # 0.55f

    goto :goto_314
.end method

.method private static screenList(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v0, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v3, "Workouts"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u0438\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0438 \u0442\u0432\u043e\u0438\u0442\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 \u2014 \u0434\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0432\u0438\u0434\u0438\u0448 \u0438\u043b\u0438 \u043f\u0443\u0441\u043d\u0435\u0448 \u0441 AI."

    const-string v3, "Ready programs and your workouts \u2014 tap to see or start with AI."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 140
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 141
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 142
    const-string v3, "\u0422\u0432\u043e\u0438\u0442\u0435"

    const-string v4, "Yours"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;I)V

    .line 145
    :cond_4d
    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v4, "Ready programs"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_123

    :goto_5f
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;I)V

    .line 148
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->pending(Landroid/content/Context;)I

    move-result v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0432 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0430: "

    const-string v5, "Exercises in the catalog: "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 151
    if-lez v2, :cond_127

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 \u043e\u0449\u0435 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u0441\u0435 \u0438\u0437\u0442\u0435\u0433\u043b\u044f\u0442"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " more downloading"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    .line 150
    invoke-static {p0, v0, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 153
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    const-string v0, "+  \u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "+  New workout"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    invoke-direct {v1, v7, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
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

    .line 160
    return-void

    .line 145
    :cond_123
    const/16 v0, 0x12

    goto/16 :goto_5f

    .line 151
    :cond_127
    const-string v0, ""

    goto :goto_c7
.end method

.method private static screenPick(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 531
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v3, "Add exercises"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0434\u043e\u0431\u0430\u0432\u0438\u0448 \u2014 \u043e\u0442\u0434\u043e\u043b\u0443 \u0435 \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u043e\u0442\u043e."

    const-string v3, "Tap to add \u2014 the last one\'s description is below."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 537
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 538
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 539
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const-string v3, "\u0422\u044a\u0440\u0441\u0438: \u043a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u0440\u044a\u0431\u2026"

    const-string v4, "Search: squat, lunge, back\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 541
    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 542
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 543
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 544
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 545
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 547
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 548
    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    new-array v3, v8, [Landroid/widget/LinearLayout;

    .line 551
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    move v0, v1

    .line 552
    :goto_9c
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_cb

    .line 553
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v6, v6, v0

    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v5

    .line 554
    new-instance v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0xf

    invoke-direct {v6, v7, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    aget-object v6, v3, v1

    invoke-static {p0, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 557
    :cond_cb
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    if-eqz v0, :cond_e7

    .line 560
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    :cond_e7
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 563
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillGrid(Landroid/content/Context;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e \u00b7 "

    const-string v3, "Done \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v3, " exercises"

    .line 567
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 568
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
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

    .line 571
    return-void
.end method

.method private static workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x42680000    # 58.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    .line 186
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 187
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 190
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 191
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 192
    const v0, -0xedebe6

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v1, v2

    .line 194
    :goto_40
    const/4 v0, 0x3

    iget-object v5, p1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_8d

    .line 195
    new-instance v5, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setGlow(Z)V

    .line 197
    invoke-virtual {v5, v11}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setStill(Z)V

    .line 198
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalColor(Ljava/lang/String;)I

    move-result v0

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    if-ne v0, v6, :cond_89

    const v0, -0xc42c

    :goto_65
    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 199
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->ex:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 200
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_40

    .line 198
    :cond_89
    const v0, -0xdd1c01

    goto :goto_65

    .line 202
    :cond_8d
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x433e0000    # 190.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v5, 0x42900000    # 72.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 204
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 205
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v4, v5, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 206
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 209
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 210
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v2, v4, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 211
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u0443\u043f\u0440. \u00b7 \u2248 "

    const-string v6, " ex. \u00b7 \u2248 "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->minutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u043c\u0438\u043d"

    const-string v6, " min"

    .line 213
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 212
    invoke-static {p0, v4, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 214
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 218
    return-object v3
.end method

.method static zoneName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041a\u043e\u0440\u0435\u043c"

    const-string v1, "Abs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_10
    return-object v0

    .line 74
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

    .line 75
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

    .line 76
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

    .line 77
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

    .line 78
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

    .line 79
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

    .line 80
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

    .line 81
    :cond_88
    const-string v0, "stretch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u0420\u0430\u0437\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Stretching"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 82
    :cond_9a
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v1, "All"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method
