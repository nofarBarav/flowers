.class public Landroid/support/constraint/helper/Flow;
.super Landroid/support/constraint/VirtualLayout;
.source "Flow.java"


# static fields
.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Flow"

.field public static final VERTICAL:I = 0x1

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mFlow:Landroid/support/constraint/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Landroid/support/constraint/VirtualLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .registers 8

    .line 199
    invoke-super {p0, p1}, Landroid/support/constraint/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    .line 200
    new-instance v0, Landroid/support/constraint/solver/widgets/Flow;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Flow;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    if-eqz p1, :cond_1a7

    .line 202
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_1a7

    .line 205
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 206
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    if-ne v3, v4, :cond_31

    .line 207
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setOrientation(I)V

    goto/16 :goto_1a3

    .line 208
    :cond_31
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_padding:I

    if-ne v3, v4, :cond_40

    .line 209
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setPadding(I)V

    goto/16 :goto_1a3

    .line 210
    :cond_40
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_paddingStart:I

    if-ne v3, v4, :cond_4f

    .line 211
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingStart(I)V

    goto/16 :goto_1a3

    .line 212
    :cond_4f
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_paddingEnd:I

    if-ne v3, v4, :cond_5e

    .line 213
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingEnd(I)V

    goto/16 :goto_1a3

    .line 214
    :cond_5e
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_paddingLeft:I

    if-ne v3, v4, :cond_6d

    .line 215
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingLeft(I)V

    goto/16 :goto_1a3

    .line 216
    :cond_6d
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_paddingTop:I

    if-ne v3, v4, :cond_7c

    .line 217
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingTop(I)V

    goto/16 :goto_1a3

    .line 218
    :cond_7c
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_paddingRight:I

    if-ne v3, v4, :cond_8b

    .line 219
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingRight(I)V

    goto/16 :goto_1a3

    .line 220
    :cond_8b
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_paddingBottom:I

    if-ne v3, v4, :cond_9a

    .line 221
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingBottom(I)V

    goto/16 :goto_1a3

    .line 222
    :cond_9a
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_wrapMode:I

    if-ne v3, v4, :cond_a9

    .line 223
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setWrapMode(I)V

    goto/16 :goto_1a3

    .line 224
    :cond_a9
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_horizontalStyle:I

    if-ne v3, v4, :cond_b8

    .line 225
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setHorizontalStyle(I)V

    goto/16 :goto_1a3

    .line 226
    :cond_b8
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_verticalStyle:I

    if-ne v3, v4, :cond_c7

    .line 227
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setVerticalStyle(I)V

    goto/16 :goto_1a3

    .line 228
    :cond_c7
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalStyle:I

    if-ne v3, v4, :cond_d6

    .line 229
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setFirstHorizontalStyle(I)V

    goto/16 :goto_1a3

    .line 230
    :cond_d6
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalStyle:I

    if-ne v3, v4, :cond_e5

    .line 231
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setLastHorizontalStyle(I)V

    goto/16 :goto_1a3

    .line 232
    :cond_e5
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalStyle:I

    if-ne v3, v4, :cond_f4

    .line 233
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setFirstVerticalStyle(I)V

    goto/16 :goto_1a3

    .line 234
    :cond_f4
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalStyle:I

    if-ne v3, v4, :cond_103

    .line 235
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setLastVerticalStyle(I)V

    goto/16 :goto_1a3

    .line 236
    :cond_103
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_horizontalBias:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_114

    .line 237
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setHorizontalBias(F)V

    goto/16 :goto_1a3

    .line 238
    :cond_114
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_firstHorizontalBias:I

    if-ne v3, v4, :cond_123

    .line 239
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setFirstHorizontalBias(F)V

    goto/16 :goto_1a3

    .line 240
    :cond_123
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_lastHorizontalBias:I

    if-ne v3, v4, :cond_132

    .line 241
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setLastHorizontalBias(F)V

    goto/16 :goto_1a3

    .line 242
    :cond_132
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_firstVerticalBias:I

    if-ne v3, v4, :cond_140

    .line 243
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setFirstVerticalBias(F)V

    goto :goto_1a3

    .line 244
    :cond_140
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_lastVerticalBias:I

    if-ne v3, v4, :cond_14e

    .line 245
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setLastVerticalBias(F)V

    goto :goto_1a3

    .line 246
    :cond_14e
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_verticalBias:I

    if-ne v3, v4, :cond_15c

    .line 247
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setVerticalBias(F)V

    goto :goto_1a3

    .line 248
    :cond_15c
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_horizontalAlign:I

    const/4 v5, 0x2

    if-ne v3, v4, :cond_16b

    .line 249
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setHorizontalAlign(I)V

    goto :goto_1a3

    .line 250
    :cond_16b
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_verticalAlign:I

    if-ne v3, v4, :cond_179

    .line 251
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setVerticalAlign(I)V

    goto :goto_1a3

    .line 252
    :cond_179
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_horizontalGap:I

    if-ne v3, v4, :cond_187

    .line 253
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setHorizontalGap(I)V

    goto :goto_1a3

    .line 254
    :cond_187
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_verticalGap:I

    if-ne v3, v4, :cond_195

    .line 255
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setVerticalGap(I)V

    goto :goto_1a3

    .line 256
    :cond_195
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_flow_maxElementsWrap:I

    if-ne v3, v4, :cond_1a3

    .line 257
    iget-object v4, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Flow;->setMaxElementsWrap(I)V

    :cond_1a3
    :goto_1a3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1c

    .line 262
    :cond_1a7
    iget-object p1, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    iput-object p1, p0, Landroid/support/constraint/helper/Flow;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    .line 263
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->validateParams()V

    return-void
.end method

.method public loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            "Landroid/support/constraint/solver/widgets/HelperWidget;",
            "Landroid/support/constraint/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/constraint/VirtualLayout;->loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 184
    instance-of p1, p2, Landroid/support/constraint/solver/widgets/Flow;

    if-eqz p1, :cond_13

    .line 185
    check-cast p2, Landroid/support/constraint/solver/widgets/Flow;

    .line 186
    iget p1, p3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    const/4 p4, -0x1

    if-eq p1, p4, :cond_13

    .line 187
    iget p1, p3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/Flow;->setOrientation(I)V

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 149
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/constraint/helper/Flow;->onMeasure(Landroid/support/constraint/solver/widgets/VirtualLayout;II)V

    return-void
.end method

.method public onMeasure(Landroid/support/constraint/solver/widgets/VirtualLayout;II)V
    .registers 6

    .line 161
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 162
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 163
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 164
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    if-eqz p1, :cond_21

    .line 166
    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/support/constraint/solver/widgets/VirtualLayout;->measure(IIII)V

    .line 167
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/VirtualLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/VirtualLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/support/constraint/helper/Flow;->setMeasuredDimension(II)V

    goto :goto_25

    :cond_21
    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1, p1}, Landroid/support/constraint/helper/Flow;->setMeasuredDimension(II)V

    :goto_25
    return-void
.end method

.method public resolveRtl(Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V
    .registers 3

    .line 143
    iget-object p1, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/Flow;->applyRtl(Z)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .registers 3

    .line 414
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setFirstHorizontalBias(F)V

    .line 415
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .registers 3

    .line 394
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setFirstHorizontalStyle(I)V

    .line 395
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .registers 3

    .line 424
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setFirstVerticalBias(F)V

    .line 425
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .registers 3

    .line 404
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setFirstVerticalStyle(I)V

    .line 405
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .registers 3

    .line 439
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setHorizontalAlign(I)V

    .line 440
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 3

    .line 374
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setHorizontalBias(F)V

    .line 375
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .registers 3

    .line 465
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setHorizontalGap(I)V

    .line 466
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .registers 3

    .line 350
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setHorizontalStyle(I)V

    .line 351
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .registers 3

    .line 485
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setMaxElementsWrap(I)V

    .line 486
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 272
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setOrientation(I)V

    .line 273
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .registers 3

    .line 282
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setPadding(I)V

    .line 283
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .registers 3

    .line 322
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingBottom(I)V

    .line 323
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .registers 3

    .line 292
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingLeft(I)V

    .line 293
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .registers 3

    .line 312
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingRight(I)V

    .line 313
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .registers 3

    .line 302
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setPaddingTop(I)V

    .line 303
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .registers 3

    .line 455
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setVerticalAlign(I)V

    .line 456
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .registers 3

    .line 384
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setVerticalBias(F)V

    .line 385
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .registers 3

    .line 475
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setVerticalGap(I)V

    .line 476
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .registers 3

    .line 364
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setVerticalStyle(I)V

    .line 365
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .registers 3

    .line 336
    iget-object v0, p0, Landroid/support/constraint/helper/Flow;->mFlow:Landroid/support/constraint/solver/widgets/Flow;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Flow;->setWrapMode(I)V

    .line 337
    invoke-virtual {p0}, Landroid/support/constraint/helper/Flow;->requestLayout()V

    return-void
.end method
