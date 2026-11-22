.class final Lcom/railty/cerfandroid/QwertyKeypad$KeyView;
.super Landroid/view/View;
.source "QwertyKeypad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/QwertyKeypad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyView"
.end annotation


# instance fields
.field private down:Z

.field private final face:Landroid/graphics/Paint;

.field private final key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

.field private final text:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/railty/cerfandroid/QwertyKeypad;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/QwertyKeypad;Landroid/content/Context;Lcom/railty/cerfandroid/QwertyKeypad$Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    .line 209
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    .line 205
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    .line 210
    iput-object p3, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    .line 211
    iget-object p2, p3, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->SHIFT:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    if-ne p2, v0, :cond_0

    invoke-static {p1, p0}, Lcom/railty/cerfandroid/QwertyKeypad;->access$002(Lcom/railty/cerfandroid/QwertyKeypad;Lcom/railty/cerfandroid/QwertyKeypad$KeyView;)Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    .line 212
    :cond_0
    iget-object p2, p3, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object p3, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->FN:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    if-ne p2, p3, :cond_1

    invoke-static {p1, p0}, Lcom/railty/cerfandroid/QwertyKeypad;->access$102(Lcom/railty/cerfandroid/QwertyKeypad;Lcom/railty/cerfandroid/QwertyKeypad$KeyView;)Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 218
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v2, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->SHIFT:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const/4 v6, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {v1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$200(Lcom/railty/cerfandroid/QwertyKeypad;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v2, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->FN:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {v1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$300(Lcom/railty/cerfandroid/QwertyKeypad;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :cond_2
    move v7, v6

    .line 219
    :goto_0
    iget-boolean v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->down:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/railty/cerfandroid/QwertyKeypad;->access$400()I

    move-result v1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    invoke-static {}, Lcom/railty/cerfandroid/QwertyKeypad;->access$500()I

    move-result v1

    goto :goto_1

    :cond_4
    const/high16 v1, -0x1000000

    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 220
    invoke-virtual {p0}, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->getWidth()I

    move-result v1

    int-to-float v8, v1

    .line 221
    invoke-virtual {p0}, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->getHeight()I

    move-result v1

    int-to-float v9, v1

    .line 222
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->access$600(Lcom/railty/cerfandroid/QwertyKeypad;F)I

    move-result v1

    int-to-float v1, v1

    .line 223
    iget-object v2, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v2, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object v2, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    invoke-static {}, Lcom/railty/cerfandroid/QwertyKeypad;->access$700()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v1, v10

    sub-float v3, v8, v1

    sub-float v4, v9, v1

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    move v2, v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v0, v0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->label:Ljava/lang/String;

    const-string v1, "start-glyph"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3ed70a3d    # 0.42f

    mul-float/2addr v0, v1

    .line 229
    const v1, 0x3da3d70a    # 0.08f

    mul-float v7, v0, v1

    .line 230
    sub-float v1, v0, v7

    div-float v11, v1, v10

    .line 231
    sub-float/2addr v8, v0

    div-float/2addr v8, v10

    .line 232
    sub-float/2addr v9, v0

    div-float/2addr v9, v10

    .line 233
    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    invoke-static {}, Lcom/railty/cerfandroid/QwertyKeypad;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    nop

    :goto_2
    const/4 v0, 0x4

    if-ge v6, v0, :cond_5

    .line 236
    rem-int/lit8 v0, v6, 0x2

    int-to-float v0, v0

    add-float v1, v11, v7

    mul-float/2addr v0, v1

    add-float/2addr v0, v8

    .line 237
    div-int/lit8 v2, v6, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v9

    .line 238
    add-float v3, v0, v11

    add-float v4, v2, v11

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    move v1, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 235
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 240
    :cond_5
    return-void

    .line 242
    :cond_6
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 243
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/railty/cerfandroid/QwertyKeypad;->access$700()I

    move-result v2

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget v2, v2, Lcom/railty/cerfandroid/QwertyKeypad$Key;->color:I

    :goto_3
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x2

    if-le v1, v3, :cond_8

    move v1, v2

    goto :goto_4

    :cond_8
    const v1, 0x3ef5c28f    # 0.48f

    .line 245
    :goto_4
    iget-object v4, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    mul-float/2addr v1, v9

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v5, v5, Lcom/railty/cerfandroid/QwertyKeypad$Key;->label:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    const v3, 0x3f19999a    # 0.6f

    :goto_5
    mul-float/2addr v3, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 246
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->label:Ljava/lang/String;

    div-float v3, v8, v10

    div-float v4, v9, v10

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    const v6, 0x3eb851ec    # 0.36f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 247
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 248
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    invoke-static {}, Lcom/railty/cerfandroid/QwertyKeypad;->access$800()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    const v3, 0x3e6147ae    # 0.22f

    mul-float/2addr v3, v9

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnLabel:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnLabel:Ljava/lang/String;

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v8

    const v4, 0x3e8f5c29    # 0.28f

    mul-float/2addr v4, v9

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 251
    :cond_a
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->jamo:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->jamo:Ljava/lang/String;

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v8

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v4, v9

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    :cond_b
    if-eqz v7, :cond_e

    .line 253
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v1, v1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v3, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->SHIFT:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {v1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$900(Lcom/railty/cerfandroid/QwertyKeypad;)Z

    move-result v1

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {v1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$1000(Lcom/railty/cerfandroid/QwertyKeypad;)Z

    move-result v1

    .line 254
    :goto_6
    iget-object v3, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v3, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    invoke-static {}, Lcom/railty/cerfandroid/QwertyKeypad;->access$700()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    if-eqz v1, :cond_d

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v8

    iget-object v2, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/railty/cerfandroid/QwertyKeypad;->access$600(Lcom/railty/cerfandroid/QwertyKeypad;F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {v4, v10}, Lcom/railty/cerfandroid/QwertyKeypad;->access$600(Lcom/railty/cerfandroid/QwertyKeypad;F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v9, v4

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 257
    :cond_d
    mul-float v1, v8, v2

    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v0, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->access$600(Lcom/railty/cerfandroid/QwertyKeypad;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v9, v0

    const v0, 0x3f333333    # 0.7f

    mul-float v3, v8, v0

    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {v0, v10}, Lcom/railty/cerfandroid/QwertyKeypad;->access$600(Lcom/railty/cerfandroid/QwertyKeypad;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v9, v0

    iget-object v5, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->face:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 259
    :cond_e
    :goto_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 281
    :pswitch_0
    return v2

    .line 274
    :pswitch_1
    iput-boolean v1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->down:Z

    .line 275
    invoke-virtual {p0}, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->invalidate()V

    .line 276
    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object v0, v0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v1, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    if-eq v0, v1, :cond_0

    return v2

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    invoke-static {v0}, Lcom/railty/cerfandroid/QwertyKeypad;->access$1300(Lcom/railty/cerfandroid/QwertyKeypad$Key;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {p1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$1400(Lcom/railty/cerfandroid/QwertyKeypad;)Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    move-result-object p1

    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget v0, v0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->vk:I

    invoke-interface {p1, v0, v2}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    invoke-static {p1, v0}, Lcom/railty/cerfandroid/QwertyKeypad;->access$1500(Lcom/railty/cerfandroid/QwertyKeypad;Lcom/railty/cerfandroid/QwertyKeypad$Key;)V

    .line 279
    :cond_2
    :goto_0
    return v2

    .line 265
    :pswitch_2
    iput-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->down:Z

    .line 266
    invoke-virtual {p0}, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->invalidate()V

    .line 267
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->performHapticFeedback(I)Z

    .line 268
    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object p1, p1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->SHIFT:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {p1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$1100(Lcom/railty/cerfandroid/QwertyKeypad;)V

    goto :goto_1

    .line 269
    :cond_3
    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget-object p1, p1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    sget-object v0, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->FN:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {p1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$1200(Lcom/railty/cerfandroid/QwertyKeypad;)V

    goto :goto_1

    .line 270
    :cond_4
    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    invoke-static {p1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$1300(Lcom/railty/cerfandroid/QwertyKeypad$Key;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->this$0:Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-static {p1}, Lcom/railty/cerfandroid/QwertyKeypad;->access$1400(Lcom/railty/cerfandroid/QwertyKeypad;)Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    move-result-object p1

    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->key:Lcom/railty/cerfandroid/QwertyKeypad$Key;

    iget v0, v0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->vk:I

    invoke-interface {p1, v0, v1}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 271
    :cond_5
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
