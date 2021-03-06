.class public Landroid/support/constraint/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/StateSet$Variant;,
        Landroid/support/constraint/StateSet$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultConstraintSet:Landroid/support/constraint/ConstraintSet;

.field mDefaultState:I

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/StateSet$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Landroid/support/constraint/StateSet;->mDefaultState:I

    .line 44
    iput v0, p0, Landroid/support/constraint/StateSet;->mCurrentStateId:I

    .line 45
    iput v0, p0, Landroid/support/constraint/StateSet;->mCurrentConstraintNumber:I

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/StateSet;->mConstraintSetMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Landroid/support/constraint/StateSet;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/StateSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12

    .line 70
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 71
    sget-object v1, Landroid/support/constraint/R$styleable;->StateSet:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_25

    .line 75
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 76
    sget v5, Landroid/support/constraint/R$styleable;->StateSet_defaultState:I

    if-ne v4, v5, :cond_22

    .line 77
    iget v5, p0, Landroid/support/constraint/StateSet;->mDefaultState:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/StateSet;->mDefaultState:I

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_25
    const/4 v0, 0x0

    .line 86
    :try_start_26
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_2a} :catch_bb
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_b6

    :goto_2a
    const/4 v3, 0x1

    if-eq v1, v3, :cond_bf

    if-eqz v1, :cond_ad

    const-string v4, "StateSet"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_44

    if-eq v1, v5, :cond_39

    goto/16 :goto_b0

    .line 118
    :cond_39
    :try_start_39
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    return-void

    .line 95
    :cond_44
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, -0x1

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_c0

    goto :goto_76

    :sswitch_51
    const-string v4, "Variant"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v7, 0x3

    goto :goto_76

    :sswitch_5b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v7, 0x1

    goto :goto_76

    :sswitch_63
    const-string v4, "LayoutDescription"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v7, 0x0

    goto :goto_76

    :sswitch_6d
    const-string v4, "State"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v7, 0x2

    :cond_76
    :goto_76
    if-eqz v7, :cond_b0

    if-eq v7, v3, :cond_b0

    if-eq v7, v6, :cond_a0

    if-eq v7, v5, :cond_95

    const-string v3, "ConstraintLayoutStates"

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 106
    :cond_95
    new-instance v1, Landroid/support/constraint/StateSet$Variant;

    invoke-direct {v1, p1, p2}, Landroid/support/constraint/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v0, :cond_b0

    .line 108
    invoke-virtual {v0, v1}, Landroid/support/constraint/StateSet$State;->add(Landroid/support/constraint/StateSet$Variant;)V

    goto :goto_b0

    .line 102
    :cond_a0
    new-instance v0, Landroid/support/constraint/StateSet$State;

    invoke-direct {v0, p1, p2}, Landroid/support/constraint/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 103
    iget-object v1, p0, Landroid/support/constraint/StateSet;->mStateList:Landroid/util/SparseArray;

    iget v3, v0, Landroid/support/constraint/StateSet$State;->mId:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b0

    .line 92
    :cond_ad
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 88
    :cond_b0
    :goto_b0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_b4} :catch_bb
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_b4} :catch_b6

    goto/16 :goto_2a

    :catch_b6
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bf

    :catch_bb
    move-exception p1

    .line 133
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_bf
    :goto_bf
    return-void

    :sswitch_data_c0
    .sparse-switch
        0x4c7d471 -> :sswitch_6d
        0x4d92b252 -> :sswitch_63
        0x526c4e31 -> :sswitch_5b
        0x7155a865 -> :sswitch_51
    .end sparse-switch
.end method


# virtual methods
.method public convertToConstraintSet(IIFF)I
    .registers 9

    .line 176
    iget-object v0, p0, Landroid/support/constraint/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/StateSet$State;

    if-nez v0, :cond_b

    return p2

    :cond_b
    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float v1, p3, p2

    if-eqz v1, :cond_3e

    cmpl-float p2, p4, p2

    if-nez p2, :cond_16

    goto :goto_3e

    :cond_16
    const/4 p2, 0x0

    .line 192
    iget-object v1, v0, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/StateSet$Variant;

    .line 193
    invoke-virtual {v2, p3, p4}, Landroid/support/constraint/StateSet$Variant;->match(FF)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 194
    iget p2, v2, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    if-ne p1, p2, :cond_34

    return p1

    :cond_34
    move-object p2, v2

    goto :goto_1d

    :cond_36
    if-eqz p2, :cond_3b

    .line 201
    iget p1, p2, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    return p1

    .line 204
    :cond_3b
    iget p1, v0, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    return p1

    .line 181
    :cond_3e
    :goto_3e
    iget p2, v0, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    if-ne p2, p1, :cond_43

    return p1

    .line 184
    :cond_43
    iget-object p2, v0, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/constraint/StateSet$Variant;

    .line 185
    iget p3, p3, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    if-ne p1, p3, :cond_49

    return p1

    .line 189
    :cond_5a
    iget p1, v0, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    return p1
.end method

.method public needsToChange(IFF)Z
    .registers 8

    .line 140
    iget v0, p0, Landroid/support/constraint/StateSet;->mCurrentStateId:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_6

    return v1

    :cond_6
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_11

    .line 144
    iget-object p1, p0, Landroid/support/constraint/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_17

    :cond_11
    iget-object p1, p0, Landroid/support/constraint/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_17
    check-cast p1, Landroid/support/constraint/StateSet$State;

    .line 146
    iget v0, p0, Landroid/support/constraint/StateSet;->mCurrentConstraintNumber:I

    if-eq v0, v2, :cond_2e

    .line 147
    iget-object v0, p1, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    iget v2, p0, Landroid/support/constraint/StateSet;->mCurrentConstraintNumber:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/StateSet$Variant;

    invoke-virtual {v0, p2, p3}, Landroid/support/constraint/StateSet$Variant;->match(FF)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v3

    .line 152
    :cond_2e
    iget v0, p0, Landroid/support/constraint/StateSet;->mCurrentConstraintNumber:I

    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/StateSet$State;->findMatch(FF)I

    move-result p1

    if-ne v0, p1, :cond_37

    return v3

    :cond_37
    return v1
.end method

.method public setOnConstraintsChanged(Landroid/support/constraint/ConstraintsChangedListener;)V
    .registers 2

    .line 159
    iput-object p1, p0, Landroid/support/constraint/StateSet;->mConstraintsChangedListener:Landroid/support/constraint/ConstraintsChangedListener;

    return-void
.end method

.method public stateGetConstraintID(III)I
    .registers 5

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, -0x1

    .line 163
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/constraint/StateSet;->updateConstraints(IIFF)I

    move-result p1

    return p1
.end method

.method public updateConstraints(IIFF)I
    .registers 7

    const/4 v0, -0x1

    if-ne p1, p2, :cond_46

    if-ne p2, v0, :cond_f

    .line 212
    iget-object p2, p0, Landroid/support/constraint/StateSet;->mStateList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/StateSet$State;

    goto :goto_19

    .line 214
    :cond_f
    iget-object p2, p0, Landroid/support/constraint/StateSet;->mStateList:Landroid/util/SparseArray;

    iget v1, p0, Landroid/support/constraint/StateSet;->mCurrentStateId:I

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/StateSet$State;

    :goto_19
    if-nez p2, :cond_1c

    return v0

    .line 220
    :cond_1c
    iget v1, p0, Landroid/support/constraint/StateSet;->mCurrentConstraintNumber:I

    if-eq v1, v0, :cond_2f

    .line 221
    iget-object v1, p2, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/StateSet$Variant;

    invoke-virtual {v1, p3, p4}, Landroid/support/constraint/StateSet$Variant;->match(FF)Z

    move-result v1

    if-eqz v1, :cond_2f

    return p1

    .line 225
    :cond_2f
    invoke-virtual {p2, p3, p4}, Landroid/support/constraint/StateSet$State;->findMatch(FF)I

    move-result p3

    if-ne p1, p3, :cond_36

    return p1

    :cond_36
    if-ne p3, v0, :cond_3b

    .line 230
    iget p1, p2, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    goto :goto_45

    :cond_3b
    iget-object p1, p2, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/StateSet$Variant;

    iget p1, p1, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    :goto_45
    return p1

    .line 233
    :cond_46
    iget-object p1, p0, Landroid/support/constraint/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/StateSet$State;

    if-nez p1, :cond_51

    return v0

    .line 237
    :cond_51
    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/StateSet$State;->findMatch(FF)I

    move-result p2

    if-ne p2, v0, :cond_5a

    .line 238
    iget p1, p1, Landroid/support/constraint/StateSet$State;->mConstraintID:I

    goto :goto_64

    :cond_5a
    iget-object p1, p1, Landroid/support/constraint/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/StateSet$Variant;

    iget p1, p1, Landroid/support/constraint/StateSet$Variant;->mConstraintID:I

    :goto_64
    return p1
.end method
