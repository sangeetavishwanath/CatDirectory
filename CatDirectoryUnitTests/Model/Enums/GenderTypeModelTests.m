#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

#import "GenderTypeModel.h"

SpecBegin(GenderTypeModelTests)

describe(@"GenderTypeModel", ^{

    describe(@"genderTypeFromString:", ^{

        context(@"when provided with the string Female", ^{

            it(@"will return GenderType - GenderTypeFemale", ^{

                GenderType gender = [GenderTypeModel genderTypeFromString:@"Female"];
                expect(gender).to.equal(GenderTypeFemale);
            });
        });

        context(@"when provided with the string FeMale", ^{

            it(@"will return GenderType - GenderTypeFemale", ^{

                GenderType gender = [GenderTypeModel genderTypeFromString:@"FeMale"];
                expect(gender).to.equal(GenderTypeFemale);
            });
        });

        context(@"when provided with the string male", ^{

            it(@"will return GenderType - GenderTypeMale", ^{

                GenderType gender = [GenderTypeModel genderTypeFromString:@"male"];
                expect(gender).to.equal(GenderTypeMale);
            });
        });

        context(@"when provided with the string MaLe", ^{

            it(@"will return GenderType - GenderTypeMale", ^{

                GenderType gender = [GenderTypeModel genderTypeFromString:@"MaLe"];
                expect(gender).to.equal(GenderTypeMale);
            });
        });

        context(@"when provided with any other string", ^{

            it(@"will return GenderType - GenderTypeUnknown", ^{

                GenderType gender = [GenderTypeModel genderTypeFromString:@"random"];
                expect(gender).to.equal(GenderTypeUnknown);
            });
        });
    });
});

SpecEnd
