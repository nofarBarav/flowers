.class public Landroid/support/constraint/ConstraintSet$Transform;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transform"
.end annotation


# static fields
.field private static final ELEVATION:I = 0xb

.field private static final ROTATION:I = 0x1

.field private static final ROTATION_X:I = 0x2

.field private static final ROTATION_Y:I = 0x3

.field private static final SCALE_X:I = 0x4

.field private static final SCALE_Y:I = 0x5

.field private static final TRANSFORM_PIVOT_X:I = 0x6

.field private static final TRANSFORM_PIVOT_Y:I = 0x7

.field private static final TRANSLATION_X:I = 0x8

.field private static final TRANSLATION_Y:I = 0x9

.field private static final TRANSLATION_Z:I = 0xa

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public applyElevation:Z

.field public elevation:F

.field public mApply:Z

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1057
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    .line 1071
    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_rotation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1072
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_rotationX:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1073
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_rotationY:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1074
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_scaleX:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1075
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_scaleY:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1076
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_transformPivotX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1077
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_transformPivotY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1078
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_translationX:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1079
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_translationY:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1080
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_translationZ:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1081
    sget-object v0, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->Transform_android_elevation:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1027
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->mApply:Z

    const/4 v1, 0x0

    .line 1028
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotation:F

    .line 1029
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotationX:F

    .line 1030
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotationY:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1031
    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->scaleX:F

    .line 1032
    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->scaleY:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1033
    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotX:F

    .line 1034
    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotY:F

    .line 1035
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationX:F

    .line 1036
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationY:F

    .line 1037
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationZ:F

    .line 1038
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->applyElevation:Z

    .line 1039
    iput v1, p0, Landroid/support/constraint/ConstraintSet$Transform;->elevation:F

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/support/constraint/ConstraintSet$Transform;)V
    .registers 3

    .line 1042
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->mApply:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->mApply:Z

    .line 1043
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->rotation:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotation:F

    .line 1044
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->rotationX:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotationX:F

    .line 1045
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->rotationY:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotationY:F

    .line 1046
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->scaleX:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->scaleX:F

    .line 1047
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->scaleY:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->scaleY:F

    .line 1048
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotX:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotX:F

    .line 1049
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotY:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotY:F

    .line 1050
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->translationX:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationX:F

    .line 1051
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->translationY:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationY:F

    .line 1052
    iget v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->translationZ:F

    iput v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationZ:F

    .line 1053
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Transform;->applyElevation:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintSet$Transform;->applyElevation:Z

    .line 1054
    iget p1, p1, Landroid/support/constraint/ConstraintSet$Transform;->elevation:F

    iput p1, p0, Landroid/support/constraint/ConstraintSet$Transform;->elevation:F

    return-void
.end method

.method fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 1085
    sget-object v0, Landroid/support/constraint/R$styleable;->Transform:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 1086
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintSet$Transform;->mApply:Z

    .line 1087
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_91

    .line 1089
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1091
    sget-object v3, Landroid/support/constraint/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/16 v4, 0x15

    packed-switch v3, :pswitch_data_96

    goto/16 :goto_8d

    .line 1125
    :pswitch_21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_8d

    .line 1126
    iput-boolean p2, p0, Landroid/support/constraint/ConstraintSet$Transform;->applyElevation:Z

    .line 1127
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->elevation:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->elevation:F

    goto :goto_8d

    .line 1120
    :pswitch_30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_8d

    .line 1121
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationZ:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationZ:F

    goto :goto_8d

    .line 1117
    :pswitch_3d
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationY:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationY:F

    goto :goto_8d

    .line 1114
    :pswitch_46
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationX:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->translationX:F

    goto :goto_8d

    .line 1111
    :pswitch_4f
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotY:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotY:F

    goto :goto_8d

    .line 1108
    :pswitch_58
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotX:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotX:F

    goto :goto_8d

    .line 1105
    :pswitch_61
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->scaleY:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->scaleY:F

    goto :goto_8d

    .line 1102
    :pswitch_6a
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->scaleX:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->scaleX:F

    goto :goto_8d

    .line 1099
    :pswitch_73
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotationY:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotationY:F

    goto :goto_8d

    .line 1096
    :pswitch_7c
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotationX:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotationX:F

    goto :goto_8d

    .line 1093
    :pswitch_85
    iget v3, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotation:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/ConstraintSet$Transform;->rotation:F

    :cond_8d
    :goto_8d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 1132
    :cond_91
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_85
        :pswitch_7c
        :pswitch_73
        :pswitch_6a
        :pswitch_61
        :pswitch_58
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_30
        :pswitch_21
    .end packed-switch
.end method
