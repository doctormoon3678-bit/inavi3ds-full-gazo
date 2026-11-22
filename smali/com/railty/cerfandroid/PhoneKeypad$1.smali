.class Lcom/railty/cerfandroid/PhoneKeypad$1;
.super Landroid/graphics/drawable/LayerDrawable;
.source "PhoneKeypad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/PhoneKeypad;->Button(Lcom/railty/cerfandroid/PhoneKeypad$Key;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/PhoneKeypad;

.field final synthetic val$glyph:Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/PhoneKeypad;[Landroid/graphics/drawable/Drawable;Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$1;->this$0:Lcom/railty/cerfandroid/PhoneKeypad;

    iput-object p3, p0, Lcom/railty/cerfandroid/PhoneKeypad$1;->val$glyph:Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/railty/cerfandroid/PhoneKeypad$1;->val$glyph:Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->getIntrinsicWidth()I

    move-result v0

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    sub-int/2addr p1, v2

    .line 142
    iget-object v2, p0, Lcom/railty/cerfandroid/PhoneKeypad$1;->val$glyph:Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;

    add-int v3, v1, v0

    add-int/2addr v0, p1

    invoke-virtual {v2, v1, p1, v3, v0}, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;->setBounds(IIII)V

    .line 143
    return-void
.end method
