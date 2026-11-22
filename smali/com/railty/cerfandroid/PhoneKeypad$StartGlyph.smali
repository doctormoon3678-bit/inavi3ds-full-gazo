.class final Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;
.super Landroid/graphics/drawable/Drawable;
.source "PhoneKeypad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/PhoneKeypad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartGlyph"
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 94
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->paint:Landroid/graphics/Paint;

    .line 95
    iput p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->size:I

    .line 96
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 103
    invoke-virtual {p0}, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v2

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 106
    iget-object v3, p0, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/railty/cerfandroid/PhoneKeypad;->access$000()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 108
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    rem-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    add-float v6, v2, v1

    mul-float/2addr v5, v6

    add-float v8, v4, v5

    .line 109
    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float v9, v4, v5

    .line 110
    add-float v10, v8, v2

    add-float v11, v9, v2

    iget-object v12, p0, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->size:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->size:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 116
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
