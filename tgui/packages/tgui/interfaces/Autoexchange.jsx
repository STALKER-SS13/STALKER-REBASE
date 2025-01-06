import {
  Button,
  Collapsible,
  LabeledList,
  Section,
  Stack,
} from 'tgui-core/components';
import { capitalize } from 'tgui-core/string';

import { useBackend } from '../backend';
import { Window } from '../layouts';

export const Autoexchange = (props) => {
  const { act, data } = useBackend();
  const {
    hasId,
    uname,
    umoney,
    categories = [],
    items = [],
    cfilter,
    buying = [],
    exchange,
  } = data;

  return (
    <Window width={500} height={700} title={'Autoexchange'}>
      <Window.Content scrollable>
        {/* All Sections */}
        <Stack fill vertical justify="space-between">
          {/* User's Profile */}
          <Stack.Item>
            <Section
              title={'PROFILE - ' + (hasId ? uname.toUpperCase() : 'NULL')}
            >
              <LabeledList>
                <LabeledList.Item label="money">
                  {hasId ? '₽' + umoney : 'NULL'}
                </LabeledList.Item>
              </LabeledList>
            </Section>
          </Stack.Item>
          {/* Categories & Items */}
          <Stack.Item grow>
            <Stack fill>
              {/* Categories */}
              <Stack.Item width="25%">
                <Section title="CATEGORIES" fill style={{ overflow: 'auto' }}>
                  {categories.map((category) => {
                    if (category.subcategories !== null) {
                      return (
                        <Collapsible
                          title={capitalize(category.name.replace('_', ' '))}
                          onOpen={() =>
                            act('category', {
                              category: category.name,
                            })
                          }
                        >
                          {category.subcategories.map((subcategory) => (
                            <Button
                              ml="4px"
                              content={capitalize(
                                subcategory.name.replace('_', ' '),
                              )}
                              onClick={() =>
                                act('category', {
                                  category:
                                    category.name + '/' + subcategory.name,
                                })
                              }
                            />
                          ))}
                        </Collapsible>
                      );
                    } else {
                      return (
                        <Button
                          content={category.name}
                          onClick={() =>
                            act('category', {
                              category: category.name,
                            })
                          }
                        />
                      );
                    }
                  })}
                </Section>
              </Stack.Item>
              {/* Items */}
              <Stack.Item grow style={{ overflow: 'auto' }}>
                <Section
                  fill
                  title={
                    cfilter === ''
                      ? 'ALL CATEGORIES'
                      : cfilter
                          .split('/')
                          [cfilter.split('/').length - 1].replace('_', ' ')
                          .toUpperCase()
                  }
                >
                  {items
                    .filter((item) =>
                      item.category
                        .toLowerCase()
                        .includes(cfilter.toLowerCase()),
                    )
                    .map((item) => (
                      <Stack height="24px">
                        <Stack.Item grow>{item.name}</Stack.Item>
                        <Stack.Item>
                          <Button
                            content={'₽' + item.value}
                            color="good"
                            onClick={() =>
                              act('addBuy', {
                                item: item.path,
                              })
                            }
                          />
                        </Stack.Item>
                      </Stack>
                    ))}
                </Section>
              </Stack.Item>
            </Stack>
          </Stack.Item>
          {/* Exchange */}
          <Stack.Item height="25%">
            <Stack fill>
              {/* Sell */}
              <Stack.Item grow>
                <Stack vertical fill>
                  <Stack.Item>
                    <Section title="SELL" fitted />
                  </Stack.Item>
                  <Stack.Item grow>
                    <Section fill style={{ overflow: 'auto' }}>
                      <div>{}</div>
                    </Section>
                  </Stack.Item>
                </Stack>
              </Stack.Item>
              {/* Purchase */}
              <Stack.Item grow>
                <Stack vertical fill>
                  <Stack.Item>
                    <Section title="BUY" fitted />
                  </Stack.Item>
                  <Stack.Item grow>
                    <Section fill style={{ overflow: 'auto' }}>
                      {buying.map((item, index) => (
                        <Stack height="24px">
                          <Stack.Item grow>{item.name}</Stack.Item>
                          <Stack.Item>
                            <Button
                              content={'₽' + item.value}
                              color="bad"
                              onClick={() =>
                                act('removeBuy', {
                                  itemIndex: index + 1,
                                })
                              }
                            />
                          </Stack.Item>
                        </Stack>
                      ))}
                    </Section>
                  </Stack.Item>
                </Stack>
              </Stack.Item>
            </Stack>
          </Stack.Item>
          {/* Complete Transaction*/}
          <Stack.Item>
            <Section>
              <Button
                width="100%"
                textAlign="center"
                color="good"
                content={'Complete Transaction: ₽' + (exchange ? exchange : 0)}
                onClick={() => act('completeTransaction')}
              />
            </Section>
          </Stack.Item>
        </Stack>
      </Window.Content>
    </Window>
  );
};
