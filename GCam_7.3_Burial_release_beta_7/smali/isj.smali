.class final synthetic Lisj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Litr;


# direct methods
.method public constructor <init>(Litr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lisj;->a:Litr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lisj;->a:Litr;

    invoke-virtual {v0}, Litr;->b()V

    return-void
.end method
