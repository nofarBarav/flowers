.class public Landroid/support/constraint/solver/state/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatio:F

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/constraint/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 34
    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->WRAP_CONTENT:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    const v1, 0x7fffffff

    .line 37
    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    .line 40
    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mRatio:F

    .line 41
    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 42
    iput-boolean v0, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 34
    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->WRAP_CONTENT:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    const v1, 0x7fffffff

    .line 37
    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    .line 40
    iput v1, p0, Landroid/support/constraint/solver/state/Dimension;->mRatio:F

    .line 41
    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 42
    iput-boolean v0, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    .line 52
    iput-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    return-void
.end method

.method public static Fixed(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 3

    .line 67
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/state/Dimension;->fixed(I)Landroid/support/constraint/solver/state/Dimension;

    return-object v0
.end method

.method public static Fixed(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 3

    .line 73
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/state/Dimension;->fixed(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;

    return-object v0
.end method

.method public static Parent()Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 85
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Percent(Ljava/lang/Object;F)Landroid/support/constraint/solver/state/Dimension;
    .registers 4

    .line 79
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0, p0, p1}, Landroid/support/constraint/solver/state/Dimension;->percent(Ljava/lang/Object;F)Landroid/support/constraint/solver/state/Dimension;

    return-object v0
.end method

.method public static Spread()Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 93
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Suggested(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 55
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    invoke-direct {v0}, Landroid/support/constraint/solver/state/Dimension;-><init>()V

    .line 56
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/state/Dimension;->suggested(I)Landroid/support/constraint/solver/state/Dimension;

    return-object v0
.end method

.method public static Suggested(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 61
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    invoke-direct {v0}, Landroid/support/constraint/solver/state/Dimension;-><init>()V

    .line 62
    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/state/Dimension;->suggested(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;

    return-object v0
.end method

.method public static Wrap()Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 89
    new-instance v0, Landroid/support/constraint/solver/state/Dimension;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V
    .registers 7

    const/4 p1, 0x2

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-nez p3, :cond_5c

    .line 181
    iget-boolean p3, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    if-eqz p3, :cond_2a

    .line 182
    sget-object p3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 184
    iget-object p3, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p3, v1, :cond_19

    const/4 p1, 0x1

    goto :goto_1f

    .line 186
    :cond_19
    sget-object v0, Landroid/support/constraint/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne p3, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 189
    :goto_1f
    iget p3, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    iget v1, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    goto/16 :goto_ad

    .line 191
    :cond_2a
    iget p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    if-lez p1, :cond_31

    .line 192
    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 194
    :cond_31
    iget p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    if-ge p1, v1, :cond_38

    .line 195
    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMaxWidth(I)V

    .line 197
    :cond_38
    iget-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object p3, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, p3, :cond_45

    .line 198
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_ad

    .line 199
    :cond_45
    sget-object p3, Landroid/support/constraint/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne p1, p3, :cond_4f

    .line 200
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_ad

    :cond_4f
    if-nez p1, :cond_ad

    .line 202
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 203
    iget p1, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_ad

    .line 207
    :cond_5c
    iget-boolean p3, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    if-eqz p3, :cond_7d

    .line 208
    sget-object p3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 210
    iget-object p3, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p3, v1, :cond_6d

    const/4 p1, 0x1

    goto :goto_73

    .line 212
    :cond_6d
    sget-object v0, Landroid/support/constraint/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne p3, v0, :cond_72

    goto :goto_73

    :cond_72
    const/4 p1, 0x0

    .line 215
    :goto_73
    iget p3, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    iget v1, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    goto :goto_ad

    .line 217
    :cond_7d
    iget p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    if-lez p1, :cond_84

    .line 218
    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 220
    :cond_84
    iget p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    if-ge p1, v1, :cond_8b

    .line 221
    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setMaxHeight(I)V

    .line 223
    :cond_8b
    iget-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object p3, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, p3, :cond_97

    .line 224
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_ad

    .line 225
    :cond_97
    sget-object p3, Landroid/support/constraint/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne p1, p3, :cond_a1

    .line 226
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_ad

    :cond_a1
    if-nez p1, :cond_ad

    .line 228
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 229
    iget p1, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method public fixed(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 3

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 152
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    return-object p0
.end method

.method public fixed(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 3

    .line 142
    iput-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 144
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    :cond_11
    return-object p0
.end method

.method getRatio()F
    .registers 2

    .line 172
    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mRatio:F

    return v0
.end method

.method getValue()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    return v0
.end method

.method public max(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 3

    .line 116
    iget v0, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    if-ltz v0, :cond_6

    .line 117
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    :cond_6
    return-object p0
.end method

.method public max(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 3

    .line 123
    sget-object v0, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_f

    iget-boolean p1, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    if-eqz p1, :cond_f

    .line 124
    iput-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    const p1, 0x7fffffff

    .line 125
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMax:I

    :cond_f
    return-object p0
.end method

.method public min(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    if-ltz p1, :cond_4

    .line 103
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    :cond_4
    return-object p0
.end method

.method public min(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 3

    .line 109
    sget-object v0, Landroid/support/constraint/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_7

    const/4 p1, -0x2

    .line 110
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mMin:I

    :cond_7
    return-object p0
.end method

.method public percent(Ljava/lang/Object;F)Landroid/support/constraint/solver/state/Dimension;
    .registers 3

    .line 97
    iput p2, p0, Landroid/support/constraint/solver/state/Dimension;->mPercent:F

    return-object p0
.end method

.method public ratio(F)Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    return-object p0
.end method

.method setRatio(F)V
    .registers 2

    .line 169
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mRatio:F

    return-void
.end method

.method setValue(I)V
    .registers 3

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 163
    iput p1, p0, Landroid/support/constraint/solver/state/Dimension;->mValue:I

    return-void
.end method

.method public suggested(I)Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    return-object p0
.end method

.method public suggested(Ljava/lang/Object;)Landroid/support/constraint/solver/state/Dimension;
    .registers 2

    .line 136
    iput-object p1, p0, Landroid/support/constraint/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Landroid/support/constraint/solver/state/Dimension;->mIsSuggested:Z

    return-object p0
.end method
